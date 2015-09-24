; Auto-generated. Do not edit!


(cl:in-package grasping_controller-srv)


;//! \htmlinclude MoveAll-request.msg.html

(cl:defclass <MoveAll-request> (roslisp-msg-protocol:ros-message)
  ((bl_to_obj_matr
    :reader bl_to_obj_matr
    :initarg :bl_to_obj_matr
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (obj_to_gripper_aa_vector
    :reader obj_to_gripper_aa_vector
    :initarg :obj_to_gripper_aa_vector
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (width
    :reader width
    :initarg :width
    :type cl:float
    :initform 0.0))
)

(cl:defclass MoveAll-request (<MoveAll-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveAll-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveAll-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name grasping_controller-srv:<MoveAll-request> is deprecated: use grasping_controller-srv:MoveAll-request instead.")))

(cl:ensure-generic-function 'bl_to_obj_matr-val :lambda-list '(m))
(cl:defmethod bl_to_obj_matr-val ((m <MoveAll-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader grasping_controller-srv:bl_to_obj_matr-val is deprecated.  Use grasping_controller-srv:bl_to_obj_matr instead.")
  (bl_to_obj_matr m))

(cl:ensure-generic-function 'obj_to_gripper_aa_vector-val :lambda-list '(m))
(cl:defmethod obj_to_gripper_aa_vector-val ((m <MoveAll-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader grasping_controller-srv:obj_to_gripper_aa_vector-val is deprecated.  Use grasping_controller-srv:obj_to_gripper_aa_vector instead.")
  (obj_to_gripper_aa_vector m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <MoveAll-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader grasping_controller-srv:width-val is deprecated.  Use grasping_controller-srv:width instead.")
  (width m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveAll-request>) ostream)
  "Serializes a message object of type '<MoveAll-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'bl_to_obj_matr))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'bl_to_obj_matr))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'obj_to_gripper_aa_vector))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'obj_to_gripper_aa_vector))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveAll-request>) istream)
  "Deserializes a message object of type '<MoveAll-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'bl_to_obj_matr) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'bl_to_obj_matr)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'obj_to_gripper_aa_vector) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'obj_to_gripper_aa_vector)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'width) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveAll-request>)))
  "Returns string type for a service object of type '<MoveAll-request>"
  "grasping_controller/MoveAllRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveAll-request)))
  "Returns string type for a service object of type 'MoveAll-request"
  "grasping_controller/MoveAllRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveAll-request>)))
  "Returns md5sum for a message object of type '<MoveAll-request>"
  "073c3e3dacd545cf3b5e9c386b6d1216")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveAll-request)))
  "Returns md5sum for a message object of type 'MoveAll-request"
  "073c3e3dacd545cf3b5e9c386b6d1216")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveAll-request>)))
  "Returns full string definition for message of type '<MoveAll-request>"
  (cl:format cl:nil "float32[] bl_to_obj_matr~%float32[] obj_to_gripper_aa_vector~%float32 width~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveAll-request)))
  "Returns full string definition for message of type 'MoveAll-request"
  (cl:format cl:nil "float32[] bl_to_obj_matr~%float32[] obj_to_gripper_aa_vector~%float32 width~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveAll-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'bl_to_obj_matr) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'obj_to_gripper_aa_vector) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveAll-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveAll-request
    (cl:cons ':bl_to_obj_matr (bl_to_obj_matr msg))
    (cl:cons ':obj_to_gripper_aa_vector (obj_to_gripper_aa_vector msg))
    (cl:cons ':width (width msg))
))
;//! \htmlinclude MoveAll-response.msg.html

(cl:defclass <MoveAll-response> (roslisp-msg-protocol:ros-message)
  ((error_code
    :reader error_code
    :initarg :error_code
    :type cl:integer
    :initform 0))
)

(cl:defclass MoveAll-response (<MoveAll-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveAll-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveAll-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name grasping_controller-srv:<MoveAll-response> is deprecated: use grasping_controller-srv:MoveAll-response instead.")))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <MoveAll-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader grasping_controller-srv:error_code-val is deprecated.  Use grasping_controller-srv:error_code instead.")
  (error_code m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveAll-response>) ostream)
  "Serializes a message object of type '<MoveAll-response>"
  (cl:let* ((signed (cl:slot-value msg 'error_code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveAll-response>) istream)
  "Deserializes a message object of type '<MoveAll-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_code) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveAll-response>)))
  "Returns string type for a service object of type '<MoveAll-response>"
  "grasping_controller/MoveAllResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveAll-response)))
  "Returns string type for a service object of type 'MoveAll-response"
  "grasping_controller/MoveAllResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveAll-response>)))
  "Returns md5sum for a message object of type '<MoveAll-response>"
  "073c3e3dacd545cf3b5e9c386b6d1216")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveAll-response)))
  "Returns md5sum for a message object of type 'MoveAll-response"
  "073c3e3dacd545cf3b5e9c386b6d1216")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveAll-response>)))
  "Returns full string definition for message of type '<MoveAll-response>"
  (cl:format cl:nil "int64 error_code~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveAll-response)))
  "Returns full string definition for message of type 'MoveAll-response"
  (cl:format cl:nil "int64 error_code~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveAll-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveAll-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveAll-response
    (cl:cons ':error_code (error_code msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MoveAll)))
  'MoveAll-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MoveAll)))
  'MoveAll-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveAll)))
  "Returns string type for a service object of type '<MoveAll>"
  "grasping_controller/MoveAll")