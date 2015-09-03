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
 * Auto-generated by genmsg_cpp from file /home/yk/catkin_ws/src/wsg_50_common/srv/Move.srv
 *
 */


#ifndef WSG_50_COMMON_MESSAGE_MOVERESPONSE_H
#define WSG_50_COMMON_MESSAGE_MOVERESPONSE_H


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
struct MoveResponse_
{
  typedef MoveResponse_<ContainerAllocator> Type;

  MoveResponse_()
    : error(0)  {
    }
  MoveResponse_(const ContainerAllocator& _alloc)
    : error(0)  {
    }



   typedef uint8_t _error_type;
  _error_type error;




  typedef boost::shared_ptr< ::wsg_50_common::MoveResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::wsg_50_common::MoveResponse_<ContainerAllocator> const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;

}; // struct MoveResponse_

typedef ::wsg_50_common::MoveResponse_<std::allocator<void> > MoveResponse;

typedef boost::shared_ptr< ::wsg_50_common::MoveResponse > MoveResponsePtr;
typedef boost::shared_ptr< ::wsg_50_common::MoveResponse const> MoveResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::wsg_50_common::MoveResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::wsg_50_common::MoveResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace wsg_50_common

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'wsg_50_common': ['/home/yk/catkin_ws/src/wsg_50_common/msg'], 'std_msgs': ['/opt/ros/hydro/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::wsg_50_common::MoveResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::wsg_50_common::MoveResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::wsg_50_common::MoveResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::wsg_50_common::MoveResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::wsg_50_common::MoveResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::wsg_50_common::MoveResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::wsg_50_common::MoveResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bf8e3bc5443691736455ca47e3128027";
  }

  static const char* value(const ::wsg_50_common::MoveResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xbf8e3bc544369173ULL;
  static const uint64_t static_value2 = 0x6455ca47e3128027ULL;
};

template<class ContainerAllocator>
struct DataType< ::wsg_50_common::MoveResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "wsg_50_common/MoveResponse";
  }

  static const char* value(const ::wsg_50_common::MoveResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::wsg_50_common::MoveResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 error\n\
\n\
";
  }

  static const char* value(const ::wsg_50_common::MoveResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::wsg_50_common::MoveResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.error);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct MoveResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::wsg_50_common::MoveResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::wsg_50_common::MoveResponse_<ContainerAllocator>& v)
  {
    s << indent << "error: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.error);
  }
};

} // namespace message_operations
} // namespace ros

#endif // WSG_50_COMMON_MESSAGE_MOVERESPONSE_H