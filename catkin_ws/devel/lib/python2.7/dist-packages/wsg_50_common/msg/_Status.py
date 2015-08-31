"""autogenerated by genpy from wsg_50_common/Status.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class Status(genpy.Message):
  _md5sum = "51c764be2e2c02863274a528dd8b3470"
  _type = "wsg_50_common/Status"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """string status
float32 width
float32 speed
float32 acc
float32 force
float32 force_finger0
float32 force_finger1

"""
  __slots__ = ['status','width','speed','acc','force','force_finger0','force_finger1']
  _slot_types = ['string','float32','float32','float32','float32','float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       status,width,speed,acc,force,force_finger0,force_finger1

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Status, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.status is None:
        self.status = ''
      if self.width is None:
        self.width = 0.
      if self.speed is None:
        self.speed = 0.
      if self.acc is None:
        self.acc = 0.
      if self.force is None:
        self.force = 0.
      if self.force_finger0 is None:
        self.force_finger0 = 0.
      if self.force_finger1 is None:
        self.force_finger1 = 0.
    else:
      self.status = ''
      self.width = 0.
      self.speed = 0.
      self.acc = 0.
      self.force = 0.
      self.force_finger0 = 0.
      self.force_finger1 = 0.

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
      _x = self.status
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_6f.pack(_x.width, _x.speed, _x.acc, _x.force, _x.force_finger0, _x.force_finger1))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(_x))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(_x))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.status = str[start:end].decode('utf-8')
      else:
        self.status = str[start:end]
      _x = self
      start = end
      end += 24
      (_x.width, _x.speed, _x.acc, _x.force, _x.force_finger0, _x.force_finger1,) = _struct_6f.unpack(str[start:end])
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
      _x = self.status
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_6f.pack(_x.width, _x.speed, _x.acc, _x.force, _x.force_finger0, _x.force_finger1))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(_x))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(_x))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.status = str[start:end].decode('utf-8')
      else:
        self.status = str[start:end]
      _x = self
      start = end
      end += 24
      (_x.width, _x.speed, _x.acc, _x.force, _x.force_finger0, _x.force_finger1,) = _struct_6f.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_6f = struct.Struct("<6f")
