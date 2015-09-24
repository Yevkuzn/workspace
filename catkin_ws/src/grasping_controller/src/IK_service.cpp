#include "ros/ros.h"
#include "std_msgs/String.h"
#include "moveit/robot_model_loader/robot_model_loader.h"
#include "moveit/robot_model/robot_model.h"
#include "moveit/robot_state/robot_state.h"
#include "geometry_msgs/Pose.h"
#include "vector"
#include "grasping_controller/MakeIK.h"
#include <tf/transform_datatypes.h>
#include <Eigen/Dense>
#include <Eigen/Geometry>
#include <stdio.h>

using namespace Eigen;

bool getIK(grasping_controller::MakeIK::Request  &req,
         grasping_controller::MakeIK::Response &res)
{
    Vector3f axis;
    std::vector<float> bl_to_obj_message, obj_to_gripper_message;
    bl_to_obj_message = req.bl_to_obj_matr;
    obj_to_gripper_message = req.obj_to_gripper_aa_vector;
    Map<Matrix<float, 4, 4, RowMajor> > bl_to_obj(bl_to_obj_message.data(), 4, 4);
    std::cout << bl_to_obj << std::endl;  //debug only
    ROS_INFO("asdasdasd");
    axis[0] = sin(obj_to_gripper_message[3]) * cos(obj_to_gripper_message[4]);
    axis[1] = sin(obj_to_gripper_message[3]) * sin(obj_to_gripper_message[4]);
    axis[2] = cos(obj_to_gripper_message[3]);
    Matrix3f tensor = axis * axis.transpose();
    Matrix3f cross;
    cross << 0, -axis(2), axis(1), axis(2), 0, -axis(0), -axis(1), axis(0), 0;
    Matrix3f obj_to_gripper_rotation = cos(obj_to_gripper_message[5]) * Matrix3f::Identity() +
        sin(obj_to_gripper_message[5]) * cross + (1 - cos(obj_to_gripper_message[5])) * tensor;
    Matrix4f obj_to_gripper;
    Affine3f r(obj_to_gripper_rotation);
    Affine3f t(Translation3f(Vector3f(obj_to_gripper_message[0], obj_to_gripper_message[1],
                                       obj_to_gripper_message[2])));
    obj_to_gripper = (t * r).matrix();
    std::cout << obj_to_gripper << std::endl;  //for debug only
    Matrix4f full_transform = bl_to_obj * obj_to_gripper;
    std::cout << full_transform << std::endl;  //for debug only
    Quaternionf quat(obj_to_gripper.block<3,3>(0,0));
    robot_model_loader::RobotModelLoader robot_model_loader("robot_description");
    robot_model::RobotModelPtr kinematic_model = robot_model_loader.getModel();
    ROS_INFO("Model frame: %s", kinematic_model->getModelFrame().c_str());
    robot_state::RobotStatePtr kinematic_state(new robot_state::RobotState(kinematic_model));
    kinematic_state->setToDefaultValues();
    geometry_msgs::Point pos;
    pos.x = full_transform(0, 3);
    pos.y = full_transform(1, 3);
    pos.z = full_transform(2, 3);
    geometry_msgs::Quaternion qua;
    qua.x = quat.x();
    qua.y = quat.y();
    qua.z = quat.z();
    qua.w = quat.w();
    geometry_msgs::Pose end_effector_state;
    end_effector_state.position = pos;
    end_effector_state.orientation = qua;
    std::vector<double> joint_values;
    const moveit::core::JointModelGroup* joint_model_group = kinematic_model->getJointModelGroup("manipulator");
    bool found_ik = kinematic_state->setFromIK(joint_model_group, end_effector_state, 10, 0.1);

    if(found_ik)
    {
        kinematic_state->copyJointGroupPositions(joint_model_group, joint_values);
        ROS_INFO("Found solution\n");
        for (int i = 0; i < 6; i++)
            res.joint_values.push_back(joint_values[i]);
        return true;
    }
    else
    {
        ROS_INFO("Did not find IK solution");
        return false;
    }

}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "IK_service");
  ros::NodeHandle n;

  ros::ServiceServer service = n.advertiseService("IK_service", getIK);
  ROS_INFO("Waiting for transformations");
  ros::spin();

  return 0;
}
