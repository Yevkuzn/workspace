#include "ros/ros.h"
#include "grasping_controller/MoveAll.h"
#include "wsg_50_common/Move.h"
#include "grasping_controller/MakeIK.h"
#include "grasping_controller/MoveIRB120.h"

bool processAndMove(grasping_controller::MoveAll::Request  &req,
         grasping_controller::MoveAll::Response &res)
{
    grasping_controller::MakeIK::Request  IKReq;
    grasping_controller::MakeIK::Response IKRes;
    IKReq.x_obj = req.x_obj;
    IKReq.y_obj = req.y_obj;
    IKReq.z_obj = req.z_obj;
    IKReq.xr_obj = req.xr_obj;
    IKReq.yr_obj = req.yr_obj;
    IKReq.zr_obj = req.zr_obj;
    IKReq.w_obj = req.w_obj;
    IKReq.x_gripper = req.x_gripper;
    IKReq.y_gripper = req.y_gripper;
    IKReq.z_gripper = req.z_gripper;
    IKReq.xr_gripper = req.xr_gripper;
    IKReq.yr_gripper = req.yr_gripper;
    IKReq.zr_gripper = req.zr_gripper;
    IKReq.w_gripper = req.w_gripper;
    if (ros::service::call("IK_service", IKReq, IKRes))
    {
        grasping_controller::MoveIRB120::Request  MoveReq;
        grasping_controller::MoveIRB120::Response MoveRes;
        MoveReq.joint_1 = IKRes.joint_1;
        MoveReq.joint_2 = IKRes.joint_2;
        MoveReq.joint_3 = IKRes.joint_3;
        MoveReq.joint_4 = IKRes.joint_4;
        MoveReq.joint_5 = IKRes.joint_5;
        MoveReq.joint_6 = IKRes.joint_6;
        if (ros::service::call("move_irb120", MoveReq, MoveRes))
        {
            wsg_50_common::Move::Request WSGReq;
            WSGReq.width = req.width;
            WSGReq.speed = 10.0;
            wsg_50_common::Move::Response WSGRes;
            if (ros::service::call("wsg_50/grasp", WSGReq, WSGRes))
            {
                ROS_INFO("Error %d\n", WSGRes.error);
                res.error_code = 0;
                ROS_INFO("TADAM\n");
                return true;
            }
            return false;
        }
        return false;
    }
    return false;
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "main_service");
  ros::NodeHandle n;

  ros::ServiceServer service = n.advertiseService("main_service", processAndMove);
  ROS_INFO("Waiting for transformations");
  ros::spin();

  return 0;
}
