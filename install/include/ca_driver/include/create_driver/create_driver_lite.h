#ifndef CREATE_AUTONOMY_CREATE_DRIVER_H
#define CREATE_AUTONOMY_CREATE_DRIVER_H

#include <ros/ros.h>
#include <geometry_msgs/Twist.h>
#include <geometry_msgs/TransformStamped.h>

#include "create/create.h"

class CreateDriver
{
private:
  create::Create* robot_;
  create::RobotModel model_;
  ros::Time last_cmd_vel_time_;
  bool is_running_slowly_;

  // ROS params
  std::string dev_;
  std::string base_frame_;
  std::string odom_frame_;
  double latch_duration_;
  double loop_hz_;
  bool publish_tf_;
  int baud_;

  void cmdVelCallback(const geometry_msgs::TwistConstPtr& msg);

protected:
  ros::NodeHandle nh_;
  ros::NodeHandle priv_nh_;
  ros::Subscriber cmd_vel_sub_;

public:
  CreateDriver(ros::NodeHandle& nh);
  ~CreateDriver();
  virtual void spin();

};  // class CreateDriver

#endif  // CREATE_AUTONOMY_CREATE_DRIVER_H
