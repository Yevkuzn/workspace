Environment setup:
1. Follow this for PC, 2.2.3 and later are not necessary
2. Create catkin workspace (if it is not yet created), modify ~/.bashrc and source it whenever it is needed (e.g. there is new workspace)
3. Get support package for irb_120 from https://github.com/ros-industrial/abb_experimental. Copy it either to ros share folder or your workspace (not recommended).
4. You can try using irb120 moveit package from 3 or from this repo directly, but I have not tried it.
To do this on your own follow: http://aeswiki.datasys.swri.edu/rositraining/hydro/Exercises/3.3,
http://aeswiki.datasys.swri.edu/rositraining/hydro/Exercises/3.4
You may need to delete some brackets like these "[" in the moveit package for irb120. It is recommended to use catkin workspace as a parent directory for this package and catkin as compiler.
5. Copy folders from https://github.com/nalt/wsg50-ros-pkg or from this repo (recommended) to your catkin workspace and compile them.
6. Copy graping_controller folder from this repo to your catkin workspace, compile again
7. Everithing should work now..

Run:
1. Start irb120 in auto mode (manual not tested)
2. Switch the motors on (white button)
3. Push play button on the controller to run the program
4. Switch on wsg50 power supply, or, if needed, reset it
5. roslaunch abb_irb120_support load_irb120.launch
6. roslaunch [yourmoveitpackagename]_moveit_config moveit_planning_execution.launch
7. roslaunch grasping_controller grasping_controller.launch
8. rosrun grasping_sontroller grasping_client
9. Specify file with data (in my case it is ~/Documents/tst.txt, don't use "~" there
