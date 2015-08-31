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
 * Auto-generated by genmsg_cpp from file /home/yk/catkin_ws/src/wsg_50_common/msg/Status.msg
 *
 */


#ifndef WSG_50_COMMON_MESSAGE_STATUS_H
#define WSG_50_COMMON_MESSAGE_STATUS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace wsg_50_common
{
template <class ContainerAllocator>
struct Status_
{
  typedef Status_<ContainerAllocator> Type;

  Status_()
    : status()
    , width(0.0)
    , speed(0.0)
    , acc(0.0)
    , force(0.0)
    , force_finger0(0.0)
    , force_finger1(0.0)  {
    }
  Status_(const ContainerAllocator& _alloc)
    : status(_alloc)
    , width(0.0)
    , speed(0.0)
    , acc(0.0)
    , force(0.0)
    , force_finger0(0.0)
    , force_finger1(0.0)  {
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _status_type;
  _status_type status;

   typedef float _width_type;
  _width_type width;

   typedef float _speed_type;
  _speed_type speed;

   typedef float _acc_type;
  _acc_type acc;

   typedef float _force_type;
  _force_type force;

   typedef float _force_finger0_type;
  _force_finger0_type force_finger0;

   typedef float _force_finger1_type;
  _force_finger1_type force_finger1;




  typedef boost::shared_ptr< ::wsg_50_common::Status_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::wsg_50_common::Status_<ContainerAllocator> const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;

}; // struct Status_

typedef ::wsg_50_common::Status_<std::allocator<void> > Status;

typedef boost::shared_ptr< ::wsg_50_common::Status > StatusPtr;
typedef boost::shared_ptr< ::wsg_50_common::Status const> StatusConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::wsg_50_common::Status_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::wsg_50_common::Status_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace wsg_50_common

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'wsg_50_common': ['/home/yk/catkin_ws/src/wsg_50_common/msg'], 'std_msgs': ['/opt/ros/hydro/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::wsg_50_common::Status_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::wsg_50_common::Status_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::wsg_50_common::Status_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::wsg_50_common::Status_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::wsg_50_common::Status_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::wsg_50_common::Status_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::wsg_50_common::Status_<ContainerAllocator> >
{
  static const char* value()
  {
    return "51c764be2e2c02863274a528dd8b3470";
  }

  static const char* value(const ::wsg_50_common::Status_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x51c764be2e2c0286ULL;
  static const uint64_t static_value2 = 0x3274a528dd8b3470ULL;
};

template<class ContainerAllocator>
struct DataType< ::wsg_50_common::Status_<ContainerAllocator> >
{
  static const char* value()
  {
    return "wsg_50_common/Status";
  }

  static const char* value(const ::wsg_50_common::Status_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::wsg_50_common::Status_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string status\n\
float32 width\n\
float32 speed\n\
float32 acc\n\
float32 force\n\
float32 force_finger0\n\
float32 force_finger1\n\
";
  }

  static const char* value(const ::wsg_50_common::Status_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::wsg_50_common::Status_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.status);
      stream.next(m.width);
      stream.next(m.speed);
      stream.next(m.acc);
      stream.next(m.force);
      stream.next(m.force_finger0);
      stream.next(m.force_finger1);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct Status_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::wsg_50_common::Status_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::wsg_50_common::Status_<ContainerAllocator>& v)
  {
    s << indent << "status: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.status);
    s << indent << "width: ";
    Printer<float>::stream(s, indent + "  ", v.width);
    s << indent << "speed: ";
    Printer<float>::stream(s, indent + "  ", v.speed);
    s << indent << "acc: ";
    Printer<float>::stream(s, indent + "  ", v.acc);
    s << indent << "force: ";
    Printer<float>::stream(s, indent + "  ", v.force);
    s << indent << "force_finger0: ";
    Printer<float>::stream(s, indent + "  ", v.force_finger0);
    s << indent << "force_finger1: ";
    Printer<float>::stream(s, indent + "  ", v.force_finger1);
  }
};

} // namespace message_operations
} // namespace ros

#endif // WSG_50_COMMON_MESSAGE_STATUS_H
