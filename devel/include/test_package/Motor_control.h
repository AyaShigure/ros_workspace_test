// Generated by gencpp from file test_package/Motor_control.msg
// DO NOT EDIT!


#ifndef TEST_PACKAGE_MESSAGE_MOTOR_CONTROL_H
#define TEST_PACKAGE_MESSAGE_MOTOR_CONTROL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace test_package
{
template <class ContainerAllocator>
struct Motor_control_
{
  typedef Motor_control_<ContainerAllocator> Type;

  Motor_control_()
    : left_speed(0)
    , left_duration(0.0)
    , right_speed(0)
    , right_duration(0.0)
    , Hz(0)  {
    }
  Motor_control_(const ContainerAllocator& _alloc)
    : left_speed(0)
    , left_duration(0.0)
    , right_speed(0)
    , right_duration(0.0)
    , Hz(0)  {
  (void)_alloc;
    }



   typedef int16_t _left_speed_type;
  _left_speed_type left_speed;

   typedef float _left_duration_type;
  _left_duration_type left_duration;

   typedef int16_t _right_speed_type;
  _right_speed_type right_speed;

   typedef float _right_duration_type;
  _right_duration_type right_duration;

   typedef int16_t _Hz_type;
  _Hz_type Hz;





  typedef boost::shared_ptr< ::test_package::Motor_control_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::test_package::Motor_control_<ContainerAllocator> const> ConstPtr;

}; // struct Motor_control_

typedef ::test_package::Motor_control_<std::allocator<void> > Motor_control;

typedef boost::shared_ptr< ::test_package::Motor_control > Motor_controlPtr;
typedef boost::shared_ptr< ::test_package::Motor_control const> Motor_controlConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::test_package::Motor_control_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::test_package::Motor_control_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::test_package::Motor_control_<ContainerAllocator1> & lhs, const ::test_package::Motor_control_<ContainerAllocator2> & rhs)
{
  return lhs.left_speed == rhs.left_speed &&
    lhs.left_duration == rhs.left_duration &&
    lhs.right_speed == rhs.right_speed &&
    lhs.right_duration == rhs.right_duration &&
    lhs.Hz == rhs.Hz;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::test_package::Motor_control_<ContainerAllocator1> & lhs, const ::test_package::Motor_control_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace test_package

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::test_package::Motor_control_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::test_package::Motor_control_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::test_package::Motor_control_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::test_package::Motor_control_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::test_package::Motor_control_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::test_package::Motor_control_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::test_package::Motor_control_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4e50ba1e73541c0fce782268f48a6992";
  }

  static const char* value(const ::test_package::Motor_control_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4e50ba1e73541c0fULL;
  static const uint64_t static_value2 = 0xce782268f48a6992ULL;
};

template<class ContainerAllocator>
struct DataType< ::test_package::Motor_control_<ContainerAllocator> >
{
  static const char* value()
  {
    return "test_package/Motor_control";
  }

  static const char* value(const ::test_package::Motor_control_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::test_package::Motor_control_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int16 left_speed\n"
"float32 left_duration\n"
"int16 right_speed\n"
"float32 right_duration\n"
"int16 Hz\n"
;
  }

  static const char* value(const ::test_package::Motor_control_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::test_package::Motor_control_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.left_speed);
      stream.next(m.left_duration);
      stream.next(m.right_speed);
      stream.next(m.right_duration);
      stream.next(m.Hz);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Motor_control_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::test_package::Motor_control_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::test_package::Motor_control_<ContainerAllocator>& v)
  {
    s << indent << "left_speed: ";
    Printer<int16_t>::stream(s, indent + "  ", v.left_speed);
    s << indent << "left_duration: ";
    Printer<float>::stream(s, indent + "  ", v.left_duration);
    s << indent << "right_speed: ";
    Printer<int16_t>::stream(s, indent + "  ", v.right_speed);
    s << indent << "right_duration: ";
    Printer<float>::stream(s, indent + "  ", v.right_duration);
    s << indent << "Hz: ";
    Printer<int16_t>::stream(s, indent + "  ", v.Hz);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TEST_PACKAGE_MESSAGE_MOTOR_CONTROL_H
