; Auto-generated. Do not edit!


(cl:in-package grasping_controller-srv)


;//! \htmlinclude MoveIRB120-request.msg.html

(cl:defclass <MoveIRB120-request> (roslisp-msg-protocol:ros-message)
  ((joint_values
    :reader joint_values
    :initarg :joint_values
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass MoveIRB120-request (<MoveIRB120-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveIRB120-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveIRB120-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name grasping_controller-srv:<MoveIRB120-request> is deprecated: use grasping_controller-srv:MoveIRB120-request instead.")))

(cl:ensure-generic-function 'joint_values-val :lambda-list '(m))
(cl:defmethod joint_values-val ((m <MoveIRB120-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader grasping_controller-srv:joint_values-val is deprecated.  Use grasping_controller-srv:joint_values instead.")
  (joint_values m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveIRB120-request>) ostream)
  "Serializes a message object of type '<MoveIRB120-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joint_values))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'joint_values))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveIRB120-request>) istream)
  "Deserializes a message object of type '<MoveIRB120-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joint_values) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joint_values)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveIRB120-request>)))
  "Returns string type for a service object of type '<MoveIRB120-request>"
  "grasping_controller/MoveIRB120Request")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveIRB120-request)))
  "Returns string type for a service object of type 'MoveIRB120-request"
  "grasping_controller/MoveIRB120Request")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveIRB120-request>)))
  "Returns md5sum for a message object of type '<MoveIRB120-request>"
  "f1066544fd7fbd13d03469c45f70c4b4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveIRB120-request)))
  "Returns md5sum for a message object of type 'MoveIRB120-request"
  "f1066544fd7fbd13d03469c45f70c4b4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveIRB120-request>)))
  "Returns full string definition for message of type '<MoveIRB120-request>"
  (cl:format cl:nil "float64[] joint_values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveIRB120-request)))
  "Returns full string definition for message of type 'MoveIRB120-request"
  (cl:format cl:nil "float64[] joint_values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveIRB120-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_values) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveIRB120-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveIRB120-request
    (cl:cons ':joint_values (joint_values msg))
))
;//! \htmlinclude MoveIRB120-response.msg.html

(cl:defclass <MoveIRB120-response> (roslisp-msg-protocol:ros-message)
  ((error
    :reader error
    :initarg :error
    :type cl:integer
    :initform 0))
)

(cl:defclass MoveIRB120-response (<MoveIRB120-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveIRB120-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveIRB120-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name grasping_controller-srv:<MoveIRB120-response> is deprecated: use grasping_controller-srv:MoveIRB120-response instead.")))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <MoveIRB120-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader grasping_controller-srv:error-val is deprecated.  Use grasping_controller-srv:error instead.")
  (error m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveIRB120-response>) ostream)
  "Serializes a message object of type '<MoveIRB120-response>"
  (cl:let* ((signed (cl:slot-value msg 'error)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveIRB120-response>) istream)
  "Deserializes a message object of type '<MoveIRB120-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveIRB120-response>)))
  "Returns string type for a service object of type '<MoveIRB120-response>"
  "grasping_controller/MoveIRB120Response")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveIRB120-response)))
  "Returns string type for a service object of type 'MoveIRB120-response"
  "grasping_controller/MoveIRB120Response")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveIRB120-response>)))
  "Returns md5sum for a message object of type '<MoveIRB120-response>"
  "f1066544fd7fbd13d03469c45f70c4b4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveIRB120-response)))
  "Returns md5sum for a message object of type 'MoveIRB120-response"
  "f1066544fd7fbd13d03469c45f70c4b4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveIRB120-response>)))
  "Returns full string definition for message of type '<MoveIRB120-response>"
  (cl:format cl:nil "int64 error~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveIRB120-response)))
  "Returns full string definition for message of type 'MoveIRB120-response"
  (cl:format cl:nil "int64 error~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveIRB120-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveIRB120-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveIRB120-response
    (cl:cons ':error (error msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MoveIRB120)))
  'MoveIRB120-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MoveIRB120)))
  'MoveIRB120-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveIRB120)))
  "Returns string type for a service object of type '<MoveIRB120>"
  "grasping_controller/MoveIRB120")