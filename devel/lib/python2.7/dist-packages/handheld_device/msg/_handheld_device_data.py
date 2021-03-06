# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from handheld_device/handheld_device_data.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class handheld_device_data(genpy.Message):
  _md5sum = "5f3fc4e797e13ce34dcd40452711b663"
  _type = "handheld_device/handheld_device_data"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """int16 device_distance
float32 quatx
float32 quaty
float32 quatz
float32 quatw
float32 accelx
float32 accely
float32 accelz
int8 device_switch"""
  __slots__ = ['device_distance','quatx','quaty','quatz','quatw','accelx','accely','accelz','device_switch']
  _slot_types = ['int16','float32','float32','float32','float32','float32','float32','float32','int8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       device_distance,quatx,quaty,quatz,quatw,accelx,accely,accelz,device_switch

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(handheld_device_data, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.device_distance is None:
        self.device_distance = 0
      if self.quatx is None:
        self.quatx = 0.
      if self.quaty is None:
        self.quaty = 0.
      if self.quatz is None:
        self.quatz = 0.
      if self.quatw is None:
        self.quatw = 0.
      if self.accelx is None:
        self.accelx = 0.
      if self.accely is None:
        self.accely = 0.
      if self.accelz is None:
        self.accelz = 0.
      if self.device_switch is None:
        self.device_switch = 0
    else:
      self.device_distance = 0
      self.quatx = 0.
      self.quaty = 0.
      self.quatz = 0.
      self.quatw = 0.
      self.accelx = 0.
      self.accely = 0.
      self.accelz = 0.
      self.device_switch = 0

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
      buff.write(_get_struct_h7fb().pack(_x.device_distance, _x.quatx, _x.quaty, _x.quatz, _x.quatw, _x.accelx, _x.accely, _x.accelz, _x.device_switch))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 31
      (_x.device_distance, _x.quatx, _x.quaty, _x.quatz, _x.quatw, _x.accelx, _x.accely, _x.accelz, _x.device_switch,) = _get_struct_h7fb().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_h7fb().pack(_x.device_distance, _x.quatx, _x.quaty, _x.quatz, _x.quatw, _x.accelx, _x.accely, _x.accelz, _x.device_switch))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 31
      (_x.device_distance, _x.quatx, _x.quaty, _x.quatz, _x.quatw, _x.accelx, _x.accely, _x.accelz, _x.device_switch,) = _get_struct_h7fb().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_h7fb = None
def _get_struct_h7fb():
    global _struct_h7fb
    if _struct_h7fb is None:
        _struct_h7fb = struct.Struct("<h7fb")
    return _struct_h7fb
