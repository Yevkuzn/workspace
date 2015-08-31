#include "ros/ros.h"
#include "std_msgs/String.h"
#include "moveit/robot_model_loader/robot_model_loader.h"
#include "moveit/robot_model/robot_model.h"
#include "moveit/robot_state/robot_state.h"
#include "geometry_msgs/Pose.h"
#include "vector"
#include "string"

#include <sstream>

int main(int argc, char **argv)
{
    ros::init(argc, argv, "ik");
    ros::NodeHandle n;
    robot_model_loader::RobotModelLoader robot_model_loader("robot_description");
    robot_model::RobotModelPtr kinematic_model = robot_model_loader.getModel();
    ROS_INFO("Model frame: %s", kinematic_model->getModelFrame().c_str());
    robot_state::RobotStatePtr kinematic_state(new robot_state::RobotState(kinematic_model));
    kinematic_state->setToDefaultValues();
    geometry_msgs::Point pos;
    pos.x = 0.5;
    pos.y = 0;
    pos.z = 0.5;
    geometry_msgs::Quaternion qua;
    qua.x = 0;
    qua.y = 0;
    qua.z = 0;
    qua.w = 1;
    geometry_msgs::Pose end_effector_state;
    end_effector_state.position = pos;
    end_effector_state.orientation = qua;
    std::vector<double> joint_values;
    std::vector<std::string> joint_names;
    joint_names.push_back("joint_1");
    joint_names.push_back("joint_2");
    joint_names.push_back("joint_3");
    joint_names.push_back("joint_4");
    joint_names.push_back("joint_5");
    joint_names.push_back("joint_6");

    const moveit::core::JointModelGroup* joint_model_group = kinematic_model->getJointModelGroup("manipulator");


    bool found_ik = kinematic_state->setFromIK(joint_model_group, end_effector_state, 10, 0.1);

    if(found_ik)
    {
        kinematic_state->copyJointGroupPositions(joint_model_group, joint_values);
        ROS_INFO("asd\n");
        for(std::size_t i=0; i < joint_names.size(); ++i)
        {
            ROS_INFO("Joint %s: %f", joint_names[i].c_str(), joint_values[i]);
        }
    }
    else
    {
        ROS_INFO("Did not find IK solution");
    }


    return 0;
}
