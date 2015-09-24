; Auto-generated. Do not edit!


(cl:in-package grasping_controller-srv)


;//! \htmlinclude MakeIK-request.msg.html

(cl:defclass <MakeIK-request> (roslisp-msg-protocol:ros-message)
  ((bl_to_obj_matr
    :reader bl_to_obj_matr
    :initarg :bl_to_obj_matr
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (obj_to_gripper_aa_vector
    :reader obj_to_gripper_aa_vector
    :initarg :obj_to_gripper_aa_vector
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass MakeIK-request (<MakeIK-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MakeIK-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MakeIK-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name grasping_controller-srv:<MakeIK-request> is deprecated: use grasping_controller-srv:MakeIK-request instead.")))

(cl:ensure-generic-function 'bl_to_obj_matr-val :lambda-list '(m))
(cl:defmethod bl_to_obj_matr-val ((m <MakeIK-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader grasping_controller-srv:bl_to_obj_matr-val is deprecated.  Use grasping_controller-srv:bl_to_obj_matr instead.")
  (bl_to_obj_matr m))

(cl:ensure-generic-function 'obj_to_gripper_aa_vector-val :lambda-list '(m))
(cl:defmethod obj_to_gripper_aa_vector-val ((m <MakeIK-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader grasping_controller-srv:obj_to_gripper_aa_vector-val is deprecated.  Use grasping_controller-srv:obj_to_gripper_aa_vector instead.")
  (obj_to_gripper_aa_vector m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MakeIK-request>) ostream)
  "Serializes a message object of type '<MakeIK-request>"
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MakeIK-request>) istream)
  "Deserializes a message object of type '<MakeIK-request>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MakeIK-request>)))
  "Returns string type for a service object of type '<MakeIK-request>"
  "grasping_controller/MakeIKRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MakeIK-request)))
  "Returns string type for a service object of type 'MakeIK-request"
  "grasping_controller/MakeIKRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MakeIK-request>)))
  "Returns md5sum for a message object of type '<MakeIK-request>"
  "2edeaa07c169ce52eee0f703d664756e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MakeIK-request)))
  "Returns md5sum for a message object of type 'MakeIK-request"
  "2edeaa07c169ce52eee0f703d664756e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MakeIK-request>)))
  "Returns full string definition for message of type '<MakeIK-request>"
  (cl:format cl:nil "float32[] bl_to_obj_matr~%float32[] obj_to_gripper_aa_vector~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MakeIK-request)))
  "Returns full string definition for message of type 'MakeIK-request"
  (cl:format cl:nil "float32[] bl_to_obj_matr~%float32[] obj_to_gripper_aa_vector~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MakeIK-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'bl_to_obj_matr) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'obj_to_gripper_aa_vector) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MakeIK-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MakeIK-request
    (cl:cons ':bl_to_obj_matr (bl_to_obj_matr msg))
    (cl:cons ':obj_to_gripper_aa_vector (obj_to_gripper_aa_vector msg))
))
;//! \htmlinclude MakeIK-response.msg.html

(cl:defclass <MakeIK-response> (roslisp-msg-protocol:ros-message)
  ((joint_values
    :reader joint_values
    :initarg :joint_values
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass MakeIK-response (<MakeIK-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MakeIK-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MakeIK-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name grasping_controller-srv:<MakeIK-response> is deprecated: use grasping_controller-srv:MakeIK-response instead.")))

(cl:ensure-generic-function 'joint_values-val :lambda-list '(m))
(cl:defmethod joint_values-val ((m <MakeIK-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader grasping_controller-srv:joint_values-val is deprecated.  Use grasping_controller-srv:joint_values instead.")
  (joint_values m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MakeIK-response>) ostream)
  "Serializes a message object of type '<MakeIK-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MakeIK-response>) istream)
  "Deserializes a message object of type '<MakeIK-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MakeIK-response>)))
  "Returns string type for a service object of type '<MakeIK-response>"
  "grasping_controller/MakeIKResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MakeIK-response)))
  "Returns string type for a service object of type 'MakeIK-response"
  "grasping_controller/MakeIKResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MakeIK-response>)))
  "Returns md5sum for a message object of type '<MakeIK-response>"
  "2edeaa07c169ce52eee0f703d664756e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MakeIK-response)))
  "Returns md5sum for a message object of type 'MakeIK-response"
  "2edeaa07c169ce52eee0f703d664756e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MakeIK-response>)))
  "Returns full string definition for message of type '<MakeIK-response>"
  (cl:format cl:nil "float64[] joint_values~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MakeIK-response)))
  "Returns full string definition for message of type 'MakeIK-response"
  (cl:format cl:nil "float64[] joint_values~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MakeIK-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_values) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MakeIK-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MakeIK-response
    (cl:cons ':joint_values (joint_values msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MakeIK)))
  'MakeIK-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MakeIK)))
  'MakeIK-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MakeIK)))
  "Returns string type for a service object of type '<MakeIK>"
  "grasping_controller/MakeIK")