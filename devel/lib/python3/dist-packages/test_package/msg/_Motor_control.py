# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from test_package/Motor_control.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class Motor_control(genpy.Message):
  _md5sum = "eb71cca081d8618640e259cd620adabe"
  _type = "test_package/Motor_control"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """int16 left_speed
float32 left_duration
int16 right_speed
float32 right_duration"""
  __slots__ = ['left_speed','left_duration','right_speed','right_duration']
  _slot_types = ['int16','float32','int16','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       left_speed,left_duration,right_speed,right_duration

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Motor_control, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.left_speed is None:
        self.left_speed = 0
      if self.left_duration is None:
        self.left_duration = 0.
      if self.right_speed is None:
        self.right_speed = 0
      if self.right_duration is None:
        self.right_duration = 0.
    else:
      self.left_speed = 0
      self.left_duration = 0.
      self.right_speed = 0
      self.right_duration = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_hfhf().pack(_x.left_speed, _x.left_duration, _x.right_speed, _x.right_duration))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 12
      (_x.left_speed, _x.left_duration, _x.right_speed, _x.right_duration,) = _get_struct_hfhf().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_hfhf().pack(_x.left_speed, _x.left_duration, _x.right_speed, _x.right_duration))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 12
      (_x.left_speed, _x.left_duration, _x.right_speed, _x.right_duration,) = _get_struct_hfhf().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_hfhf = None
def _get_struct_hfhf():
    global _struct_hfhf
    if _struct_hfhf is None:
        _struct_hfhf = struct.Struct("<hfhf")
    return _struct_hfhf
