// Generated by gencpp from file hlpr_speech_msgs/SpeechServiceRequest.msg
// DO NOT EDIT!


#ifndef HLPR_SPEECH_MSGS_MESSAGE_SPEECHSERVICEREQUEST_H
#define HLPR_SPEECH_MSGS_MESSAGE_SPEECHSERVICEREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace hlpr_speech_msgs
{
template <class ContainerAllocator>
struct SpeechServiceRequest_
{
  typedef SpeechServiceRequest_<ContainerAllocator> Type;

  SpeechServiceRequest_()
    : get_last(false)  {
    }
  SpeechServiceRequest_(const ContainerAllocator& _alloc)
    : get_last(false)  {
  (void)_alloc;
    }



   typedef uint8_t _get_last_type;
  _get_last_type get_last;





  typedef boost::shared_ptr< ::hlpr_speech_msgs::SpeechServiceRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hlpr_speech_msgs::SpeechServiceRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SpeechServiceRequest_

typedef ::hlpr_speech_msgs::SpeechServiceRequest_<std::allocator<void> > SpeechServiceRequest;

typedef boost::shared_ptr< ::hlpr_speech_msgs::SpeechServiceRequest > SpeechServiceRequestPtr;
typedef boost::shared_ptr< ::hlpr_speech_msgs::SpeechServiceRequest const> SpeechServiceRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hlpr_speech_msgs::SpeechServiceRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hlpr_speech_msgs::SpeechServiceRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::hlpr_speech_msgs::SpeechServiceRequest_<ContainerAllocator1> & lhs, const ::hlpr_speech_msgs::SpeechServiceRequest_<ContainerAllocator2> & rhs)
{
  return lhs.get_last == rhs.get_last;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::hlpr_speech_msgs::SpeechServiceRequest_<ContainerAllocator1> & lhs, const ::hlpr_speech_msgs::SpeechServiceRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace hlpr_speech_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::hlpr_speech_msgs::SpeechServiceRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hlpr_speech_msgs::SpeechServiceRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hlpr_speech_msgs::SpeechServiceRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hlpr_speech_msgs::SpeechServiceRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hlpr_speech_msgs::SpeechServiceRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hlpr_speech_msgs::SpeechServiceRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hlpr_speech_msgs::SpeechServiceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "34c3c85c8e7befba1ea4e56d2a4777dd";
  }

  static const char* value(const ::hlpr_speech_msgs::SpeechServiceRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x34c3c85c8e7befbaULL;
  static const uint64_t static_value2 = 0x1ea4e56d2a4777ddULL;
};

template<class ContainerAllocator>
struct DataType< ::hlpr_speech_msgs::SpeechServiceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hlpr_speech_msgs/SpeechServiceRequest";
  }

  static const char* value(const ::hlpr_speech_msgs::SpeechServiceRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hlpr_speech_msgs::SpeechServiceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#request values\n"
"bool get_last\n"
;
  }

  static const char* value(const ::hlpr_speech_msgs::SpeechServiceRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hlpr_speech_msgs::SpeechServiceRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.get_last);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SpeechServiceRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hlpr_speech_msgs::SpeechServiceRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hlpr_speech_msgs::SpeechServiceRequest_<ContainerAllocator>& v)
  {
    s << indent << "get_last: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.get_last);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HLPR_SPEECH_MSGS_MESSAGE_SPEECHSERVICEREQUEST_H