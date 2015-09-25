#include "ros/ros.h"
#include "grasping_controller/MoveAll.h"
#include "grasping_controller/MoveAllRequest.h"
#include <cstdlib>
#include "string"
#include "vector"
#include "stdio.h"

std::vector<grasping_controller::MoveAll::Request> readFile(char* fileName)
{
    FILE* f;
    std::vector<grasping_controller::MoveAll::Request> res;
    f = fopen(fileName, "r");
    std::vector<float> bl_to_obj_matr(16);
    std::vector<float> obj_to_gripper_aa_vector(6);
    float width;
    fscanf(f, "%f %f %f %f", &bl_to_obj_matr[0], &bl_to_obj_matr[1], &bl_to_obj_matr[2],
           &bl_to_obj_matr[3]);
    fscanf(f, "%f %f %f %f", &bl_to_obj_matr[4], &bl_to_obj_matr[5], &bl_to_obj_matr[6],
           &bl_to_obj_matr[7]);
    fscanf(f, "%f %f %f %f", &bl_to_obj_matr[8], &bl_to_obj_matr[9], &bl_to_obj_matr[10],
           &bl_to_obj_matr[11]);
    fscanf(f, "%f %f %f %f", &bl_to_obj_matr[12], &bl_to_obj_matr[13], &bl_to_obj_matr[14],
           &bl_to_obj_matr[15]);
    while (fscanf(f, "%f %f %f %f %f %f %f", &obj_to_gripper_aa_vector[0],
                    &obj_to_gripper_aa_vector[1], &obj_to_gripper_aa_vector[2],
                    &obj_to_gripper_aa_vector[3], &obj_to_gripper_aa_vector[4],
                    &obj_to_gripper_aa_vector[5], &width) != EOF)
    {
        grasping_controller::MoveAll::Request req;
        req.bl_to_obj_matr = bl_to_obj_matr;
        req.obj_to_gripper_aa_vector = obj_to_gripper_aa_vector;
        req.width = width;
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
  return 0;
}
