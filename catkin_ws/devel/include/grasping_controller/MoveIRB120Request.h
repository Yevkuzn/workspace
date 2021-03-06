/* Software License Agreement (BSD License)
 *
 * Copyright (c) 2011, Willow Garage, Inc.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 *  * Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *  * Redistributions in binary form must reproduce the above
 *    copyright notice, this list of conditions and the following
 *    disclaimer in the documentation and/or other materials provided
 *    with the distribution.
 *  * Neither the name of Willow Garage, Inc. nor the names of its
 *    contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 * COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 * Auto-generated by genmsg_cpp from file /home/yk/catkin_ws/src/grasping_controller/srv/MoveIRB120.srv
 *
 */


#ifndef GRASPING_CONTROLLER_MESSAGE_MOVEIRB120REQUEST_H
#define GRASPING_CONTROLLER_MESSAGE_MOVEIRB120REQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace grasping_controller
{
template <class ContainerAllocator>
struct MoveIRB120Request_
{
  typedef MoveIRB120Request_<ContainerAllocator> Type;

  MoveIRB120Request_()
    : joint_1(0.0)
    , joint_2(0.0)
    , joint_3(0.0)
    , joint_4(0.0)
    , joint_5(0.0)
    , joint_6(0.0)  {
    }
  MoveIRB120Request_(const ContainerAllocator& _alloc)
    : joint_1(0.0)
    , joint_2(0.0)
    , joint_3(0.0)
    , joint_4(0.0)
    , joint_5(0.0)
    , joint_6(0.0)  {
    }



   typedef double _joint_1_type;
  _joint_1_type joint_1;

   typedef double _joint_2_type;
  _joint_2_type joint_2;

   typedef double _joint_3_type;
  _joint_3_type joint_3;

   typedef double _joint_4_type;
  _joint_4_type joint_4;

   typedef double _joint_5_type;
  _joint_5_type joint_5;

   typedef double _joint_6_type;
  _joint_6_type joint_6;




  typedef boost::shared_ptr< ::grasping_controller::MoveIRB120Request_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::grasping_controller::MoveIRB120Request_<ContainerAllocator> const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;

}; // struct MoveIRB120Request_

typedef ::grasping_controller::MoveIRB120Request_<std::allocator<void> > MoveIRB120Request;

typedef boost::shared_ptr< ::grasping_controller::MoveIRB120Request > MoveIRB120RequestPtr;
typedef boost::shared_ptr< ::grasping_controller::MoveIRB120Request const> MoveIRB120RequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::grasping_controller::MoveIRB120Request_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::grasping_controller::MoveIRB120Request_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace grasping_controller

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/hydro/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/hydro/share/geometry_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/hydro/share/actionlib_msgs/cmake/../msg'], 'trajectory_msgs': ['/opt/ros/hydro/share/trajectory_msgs/cmake/../msg'], 'control_msgs': ['/opt/ros/hydro/share/control_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::grasping_controller::MoveIRB120Request_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::grasping_controller::MoveIRB120Request_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::grasping_controller::MoveIRB120Request_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::grasping_controller::MoveIRB120Request_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::grasping_controller::MoveIRB120Request_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::grasping_controller::MoveIRB120Request_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::grasping_controller::MoveIRB120Request_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ec083468e9067c595612b436b8a4cd45";
  }

  static const char* value(const ::grasping_controller::MoveIRB120Request_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xec083468e9067c59ULL;
  static const uint64_t static_value2 = 0x5612b436b8a4cd45ULL;
};

template<class ContainerAllocator>
struct DataType< ::grasping_controller::MoveIRB120Request_<ContainerAllocator> >
{
  static const char* value()
  {
    return "grasping_controller/MoveIRB120Request";
  }

  static const char* value(const ::grasping_controller::MoveIRB120Request_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::grasping_controller::MoveIRB120Request_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 joint_1\n\
float64 joint_2\n\
float64 joint_3\n\
float64 joint_4\n\
float64 joint_5\n\
float64 joint_6\n\
";
  }

  static const char* value(const ::grasping_controller::MoveIRB120Request_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::grasping_controller::MoveIRB120Request_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.joint_1);
      stream.next(m.joint_2);
      stream.next(m.joint_3);
      stream.next(m.joint_4);
      stream.next(m.joint_5);
      stream.next(m.joint_6);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct MoveIRB120Request_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::grasping_controller::MoveIRB120Request_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::grasping_controller::MoveIRB120Request_<ContainerAllocator>& v)
  {
    s << indent << "joint_1: ";
    Printer<double>::stream(s, indent + "  ", v.joint_1);
    s << indent << "joint_2: ";
    Printer<double>::stream(s, indent + "  ", v.joint_2);
    s << indent << "joint_3: ";
    Printer<double>::stream(s, indent + "  ", v.joint_3);
    s << indent << "joint_4: ";
    Printer<double>::stream(s, indent + "  ", v.joint_4);
    s << indent << "joint_5: ";
    Printer<double>::stream(s, indent + "  ", v.joint_5);
    s << indent << "joint_6: ";
    Printer<double>::stream(s, indent + "  ", v.joint_6);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GRASPING_CONTROLLER_MESSAGE_MOVEIRB120REQUEST_H
