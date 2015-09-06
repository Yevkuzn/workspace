#include <ros/ros.h>
#include <control_msgs/FollowJointTrajectoryAction.h>
#include <trajectory_msgs/JointTrajectory.h>
#include <actionlib/client/simple_action_client.h>
#include "grasping_controller/MoveIRB120.h"


//class is almost copied from
//http://wiki.ros.org/pr2_controllers/Tutorials/Moving%20the%20arm%20using%20the%20Joint%20Trajectory%20Action

typedef actionlib::SimpleActionClient<control_msgs::FollowJointTrajectoryAction > TrajClient;

class RobotArm
{
private:
  TrajClient* traj_client_;

public:
  RobotArm()
  {
    traj_client_ = new TrajClient("/joint_trajectory_action", true);
    while(!traj_client_->waitForServer(ros::Duration(5.0))){
      ROS_INFO("Waiting for the joint_trajectory_action server");
    }
  }

  ~RobotArm()
  {
    delete traj_client_;
  }

  void startTrajectory(control_msgs::FollowJointTrajectoryGoal goal)
  {
    goal.trajectory.header.stamp = ros::Time::now() + ros::Duration(1.0);
    traj_client_->sendGoal(goal);
  }

  control_msgs::FollowJointTrajectoryGoal armExtensionTrajectory(grasping_controller::MoveIRB120::Request  &req)
  {
    //create trajectory from 0 0 0 0 0 0 and goal, further in this method goal is considered as whole trajectory
    control_msgs::FollowJointTrajectoryGoal goal;
    //assign joint names
    goal.trajectory.joint_names.push_back("joint_1");
    goal.trajectory.joint_names.push_back("joint_2");
    goal.trajectory.joint_names.push_back("joint_3");
    goal.trajectory.joint_names.push_back("joint_4");
    goal.trajectory.joint_names.push_back("joint_5");
    goal.trajectory.joint_names.push_back("joint_6");
    
    //create 2 trajectory points (1 point - 6 position and velocity values)
    goal.trajectory.points.resize(2);

    int ind = 0;
    goal.trajectory.points[ind].positions.resize(6);
    //TODO: make first point of the trajectory to be current state
    goal.trajectory.points[ind].positions[0] = 0.0;
    goal.trajectory.points[ind].positions[1] = 0.;
    goal.trajectory.points[ind].positions[2] = 0;
    goal.trajectory.points[ind].positions[3] = 0;
    goal.trajectory.points[ind].positions[4] = 0;
    goal.trajectory.points[ind].positions[5] = 0;


    //default velocities
    goal.trajectory.points[ind].velocities.resize(6);
    for (size_t j = 0; j < 6; ++j)
    {
      goal.trajectory.points[ind].velocities[j] = 0.0;
    }
    //duration untill moving to the first point, seems to be in seconds, try to make it smaller
    goal.trajectory.points[ind].time_from_start = ros::Duration(10.0);
    //second point
    ind += 1;
    goal.trajectory.points[ind].positions.resize(6);
    goal.trajectory.points[ind].positions[0] = req.joint_1;
    goal.trajectory.points[ind].positions[1] = req.joint_2;
    goal.trajectory.points[ind].positions[2] = req.joint_3;
    goal.trajectory.points[ind].positions[3] = req.joint_4;
    goal.trajectory.points[ind].positions[4] = req.joint_5;
    goal.trajectory.points[ind].positions[5] = req.joint_6;

    goal.trajectory.points[ind].velocities.resize(6);
    for (size_t j = 0; j < 6; ++j)
    {
      goal.trajectory.points[ind].velocities[j] = 0.0;
    }

    goal.trajectory.points[ind].time_from_start = ros::Duration(20.0);

    return goal;
  }

  actionlib::SimpleClientGoalState getState()
  {
    return traj_client_->getState();
  }

};

bool move(grasping_controller::MoveIRB120::Request  &req,
         grasping_controller::MoveIRB120::Response &res)
{
    //service for moving irb
    RobotArm arm;
    //executing trajectory consisting of 0 0 0 0 0 0 and goal positions
    arm.startTrajectory(arm.armExtensionTrajectory(req));
    //wait till the end of the execution
    while(!arm.getState().isDone() && ros::ok())
    {
        usleep(50000);
    }
    res.error = 0;
    return true;
}

int main(int argc, char **argv)
{
  //ros routine
  ros::init(argc, argv, "move_irb120");
  ros::NodeHandle n;
  //advertising service
  ros::ServiceServer service = n.advertiseService("move_irb120", move);
  ROS_INFO("Waiting for DoF values");
  ros::spin();

  return 0;
}
