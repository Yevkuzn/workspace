"""autogenerated by genpy from grasping_controller/MoveAllRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class MoveAllRequest(genpy.Message):
  _md5sum = "fa1904af03e492d0d9164b91521e251f"
  _type = "grasping_controller/MoveAllRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """float64 x_obj
float64 y_obj
float64 z_obj
float64 xr_obj
float64 yr_obj
float64 zr_obj
float64 w_obj
float64 x_gripper
float64 y_gripper
float64 z_gripper
float64 xr_gripper
float64 yr_gripper
float64 zr_gripper
float64 w_gripper
float64 width

"""
  __slots__ = ['x_obj','y_obj','z_obj','xr_obj','yr_obj','zr_obj','w_obj','x_gripper','y_gripper','z_gripper','xr_gripper','yr_gripper','zr_gripper','w_gripper','width']
  _slot_types = ['float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       x_obj,y_obj,z_obj,xr_obj,yr_obj,zr_obj,w_obj,x_gripper,y_gripper,z_gripper,xr_gripper,yr_gripper,zr_gripper,w_gripper,width

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(MoveAllRequest, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.x_obj is None:
        self.x_obj = 0.
      if self.y_obj is None:
        self.y_obj = 0.
      if self.z_obj is None:
        self.z_obj = 0.
      if self.xr_obj is None:
        self.xr_obj = 0.
      if self.yr_obj is None:
        self.yr_obj = 0.
      if self.zr_obj is None:
        self.zr_obj = 0.
      if self.w_obj is None:
        self.w_obj = 0.
      if self.x_gripper is None:
        self.x_gripper = 0.
      if self.y_gripper is None:
        self.y_gripper = 0.
      if self.z_gripper is None:
        self.z_gripper = 0.
      if self.xr_gripper is None:
        self.xr_gripper = 0.
      if self.yr_gripper is None:
        self.yr_gripper = 0.
      if self.zr_gripper is None:
        self.zr_gripper = 0.
      if self.w_gripper is None:
        self.w_gripper = 0.
      if self.width is None:
        self.width = 0.
    else:
      self.x_obj = 0.
      self.y_obj = 0.
      self.z_obj = 0.
      self.xr_obj = 0.
      self.yr_obj = 0.
      self.zr_obj = 0.
      self.w_obj = 0.
      self.x_gripper = 0.
      self.y_gripper = 0.
      self.z_gripper = 0.
      self.xr_gripper = 0.
      self.yr_gripper = 0.
      self.zr_gripper = 0.
      self.w_gripper = 0.
      self.width = 0.

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
      buff.write(_struct_15d.pack(_x.x_obj, _x.y_obj, _x.z_obj, _x.xr_obj, _x.yr_obj, _x.zr_obj, _x.w_obj, _x.x_gripper, _x.y_gripper, _x.z_gripper, _x.xr_gripper, _x.yr_gripper, _x.zr_gripper, _x.w_gripper, _x.width))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(_x))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(_x))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 120
      (_x.x_obj, _x.y_obj, _x.z_obj, _x.xr_obj, _x.yr_obj, _x.zr_obj, _x.w_obj, _x.x_gripper, _x.y_gripper, _x.z_gripper, _x.xr_gripper, _x.yr_gripper, _x.zr_gripper, _x.w_gripper, _x.width,) = _struct_15d.unpack(str[start:end])
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
      buff.write(_struct_15d.pack(_x.x_obj, _x.y_obj, _x.z_obj, _x.xr_obj, _x.yr_obj, _x.zr_obj, _x.w_obj, _x.x_gripper, _x.y_gripper, _x.z_gripper, _x.xr_gripper, _x.yr_gripper, _x.zr_gripper, _x.w_gripper, _x.width))
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
      _x = self
      start = end
      end += 120
      (_x.x_obj, _x.y_obj, _x.z_obj, _x.xr_obj, _x.yr_obj, _x.zr_obj, _x.w_obj, _x.x_gripper, _x.y_gripper, _x.z_gripper, _x.xr_gripper, _x.yr_gripper, _x.zr_gripper, _x.w_gripper, _x.width,) = _struct_15d.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_15d = struct.Struct("<15d")
"""autogenerated by genpy from grasping_controller/MoveAllResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class MoveAllResponse(genpy.Message):
  _md5sum = "78771aba36b8cc83a219d8afdc2aad02"
  _type = "grasping_controller/MoveAllResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """int64 error_code


"""
  __slots__ = ['error_code']
  _slot_types = ['int64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       error_code

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(MoveAllResponse, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.error_code is None:
        self.error_code = 0
    else:
      self.error_code = 0

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
      buff.write(_struct_q.pack(self.error_code))
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
      end += 8
      (self.error_code,) = _struct_q.unpack(str[start:end])
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
      buff.write(_struct_q.pack(self.error_code))
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
      end += 8
      (self.error_code,) = _struct_q.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_q = struct.Struct("<q")
class MoveAll(object):
  _type          = 'grasping_controller/MoveAll'
  _md5sum = 'f78f45f7e98b195bdcd2e68ec6a6f693'
  _request_class  = MoveAllRequest
  _response_class = MoveAllResponse
