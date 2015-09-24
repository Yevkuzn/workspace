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
    IKReq.bl_to_obj_matr = req.bl_to_obj_matr;
    IKReq.obj_to_gripper_aa_vector = req.obj_to_gripper_aa_vector;
    if (ros::service::call("IK_service", IKReq, IKRes))
    {
        grasping_controller::MoveIRB120::Request  MoveReq;
        grasping_controller::MoveIRB120::Response MoveRes;
        MoveReq.joint_values = IKRes.joint_values;
        //for (int i = 0; i < 6; i++)
            //printf("%lf ", IKRes.joint_values[i]);
        //printf("\n");
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
