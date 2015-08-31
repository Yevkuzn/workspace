#include "ros/ros.h"
#include "grasping_controller/MoveAll.h"
#include "grasping_controller/MoveAllRequest.h"
#include <cstdlib>
#include "string"
#include "vector"
#include "stdio.h"

std::vector<grasping_controller::MoveAll::Request> readFile(char* fileName)
{
    //TODO: when transformation is computed - change the order of in to correct
    FILE* f;
    std::vector<grasping_controller::MoveAll::Request> res;
    f = fopen(fileName, "r");
    double in[15];
    fscanf(f, "%lf %lf %lf %lf %lf %lf %lf", &in[0], &in[1], &in[2],
           &in[3], &in[4], &in[5], &in[6]);
    while (fscanf(f, "%lf %lf %lf %lf %lf %lf %lf %lf",
                   &in[7], &in[8], &in[9], &in[10], &in[11], &in[12], &in[13], &in[14]) != EOF)
    {
        grasping_controller::MoveAll::Request req;
        req.x_gripper = in[0];
        req.y_gripper = in[1];
        req.z_gripper = in[2];
        req.xr_gripper = in[3];
        req.yr_gripper = in[4];
        req.zr_gripper = in[5];
        req.w_gripper = in[6];
        req.x_obj = in[7];
        req.y_obj = in[8];
        req.z_obj = in[9];
        req.xr_obj = in[10];
        req.yr_obj = in[11];
        req.zr_obj = in[12];
        req.w_obj = in[13];
        req.width = in[14];
        res.push_back(req);
        printf("%d\n", res.size());
    }
    fclose (f);
    return res;
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "grasping_client");

  ros::NodeHandle n;
  ros::ServiceClient client = n.serviceClient<grasping_controller::MoveAll>("main_service");
  char fileName[80];
  scanf("%79s", fileName);
  std::vector<grasping_controller::MoveAll::Request> requests = readFile(fileName);
  grasping_controller::MoveAll srv;
  printf("%d\n", requests.size());
  int i = 0;
  do
  {
        printf("%d\n", i);
        srv.request = requests[i];
        i++;
  }
  while(!client.call(srv) && i < requests.size());
  printf("%d\n", i);
  //delete fileName;
  return 0;
}
