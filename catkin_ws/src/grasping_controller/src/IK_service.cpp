#include "ros/ros.h"
#include "std_msgs/String.h"
#include "moveit/robot_model_loader/robot_model_loader.h"
#include "moveit/robot_model/robot_model.h"
#include "moveit/robot_state/robot_state.h"
#include "geometry_msgs/Pose.h"
#include "vector"
#include "grasping_controller/MakeIK.h"

bool getIK(grasping_controller::MakeIK::Request  &req,
         grasping_controller::MakeIK::Response &res)
{
    //TODO: calculate transformation
    robot_model_loader::RobotModelLoader robot_model_loader("robot_description");
    robot_model::RobotModelPtr kinematic_model = robot_model_loader.getModel();
    ROS_INFO("Model frame: %s", kinematic_model->getModelFrame().c_str());
    robot_state::RobotStatePtr kinematic_state(new robot_state::RobotState(kinematic_model));
    kinematic_state->setToDefaultValues();
    geometry_msgs::Point pos;
    pos.x = req.x_obj;
    pos.y = req.y_obj;
    pos.z = req.z_obj;
    geometry_msgs::Quaternion qua;
    qua.x = req.xr_obj;
    qua.y = req.yr_obj;
    qua.z = req.zr_obj;
    qua.w = req.w_obj;
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
        res.joint_1 = joint_values[0];
        res.joint_2 = joint_values[1];
        res.joint_3 = joint_values[2];
        res.joint_4 = joint_values[3];
        res.joint_5 = joint_values[4];
        res.joint_6 = joint_values[5];
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
