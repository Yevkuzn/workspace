; Auto-generated. Do not edit!


(cl:in-package grasping_controller-srv)


;//! \htmlinclude move_all-request.msg.html

(cl:defclass <move_all-request> (roslisp-msg-protocol:ros-message)
  ((x_obj
    :reader x_obj
    :initarg :x_obj
    :type cl:float
    :initform 0.0)
   (y_obj
    :reader y_obj
    :initarg :y_obj
    :type cl:float
    :initform 0.0)
   (z_obj
    :reader z_obj
    :initarg :z_obj
    :type cl:float
    :initform 0.0)
   (xr_obj
    :reader xr_obj
    :initarg :xr_obj
    :type cl:float
    :initform 0.0)
   (yr_obj
    :reader yr_obj
    :initarg :yr_obj
    :type cl:float
    :initform 0.0)
   (zr_obj
    :reader zr_obj
    :initarg :zr_obj
    :type cl:float
    :initform 0.0)
   (w_obj
    :reader w_obj
    :initarg :w_obj
    :type cl:float
    :initform 0.0)
   (x_gripper
    :reader x_gripper
    :initarg :x_gripper
    :type cl:float
    :initform 0.0)
   (y_gripper
    :reader y_gripper
    :initarg :y_gripper
    :type cl:float
    :initform 0.0)
   (z_gripper
    :reader z_gripper
    :initarg :z_gripper
    :type cl:float
    :initform 0.0)
   (xr_gripper
    :reader xr_gripper
    :initarg :xr_gripper
    :type cl:float
    :initform 0.0)
   (yr_gripper
    :reader yr_gripper
    :initarg :yr_gripper
    :type cl:float
    :initform 0.0)
   (zr_gripper
    :reader zr_gripper
    :initarg :zr_gripper
    :type cl:float
    :initform 0.0)
   (w_gripper
    :reader w_gripper
    :initarg :w_gripper
    :type cl:float
    :initform 0.0))
)

(cl:defclass move_all-request (<move_all-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <move_all-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'move_all-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name grasping_controller-srv:<move_all-request> is deprecated: use grasping_controller-srv:move_all-request instead.")))

(cl:ensure-generic-function 'x_obj-val :lambda-list '(m))
(cl:defmethod x_obj-val ((m <move_all-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader grasping_controller-srv:x_obj-val is deprecated.  Use grasping_controller-srv:x_obj instead.")
  (x_obj m))

(cl:ensure-generic-function 'y_obj-val :lambda-list '(m))
(cl:defmethod y_obj-val ((m <move_all-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader grasping_controller-srv:y_obj-val is deprecated.  Use grasping_controller-srv:y_obj instead.")
  (y_obj m))

(cl:ensure-generic-function 'z_obj-val :lambda-list '(m))
(cl:defmethod z_obj-val ((m <move_all-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader grasping_controller-srv:z_obj-val is deprecated.  Use grasping_controller-srv:z_obj instead.")
  (z_obj m))

(cl:ensure-generic-function 'xr_obj-val :lambda-list '(m))
(cl:defmethod xr_obj-val ((m <move_all-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader grasping_controller-srv:xr_obj-val is deprecated.  Use grasping_controller-srv:xr_obj instead.")
  (xr_obj m))

(cl:ensure-generic-function 'yr_obj-val :lambda-list '(m))
(cl:defmethod yr_obj-val ((m <move_all-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader grasping_controller-srv:yr_obj-val is deprecated.  Use grasping_controller-srv:yr_obj instead.")
  (yr_obj m))

(cl:ensure-generic-function 'zr_obj-val :lambda-list '(m))
(cl:defmethod zr_obj-val ((m <move_all-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader grasping_controller-srv:zr_obj-val is deprecated.  Use grasping_controller-srv:zr_obj instead.")
  (zr_obj m))

(cl:ensure-generic-function 'w_obj-val :lambda-list '(m))
(cl:defmethod w_obj-val ((m <move_all-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader grasping_controller-srv:w_obj-val is deprecated.  Use grasping_controller-srv:w_obj instead.")
  (w_obj m))

(cl:ensure-generic-function 'x_gripper-val :lambda-list '(m))
(cl:defmethod x_gripper-val ((m <move_all-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader grasping_controller-srv:x_gripper-val is deprecated.  Use grasping_controller-srv:x_gripper instead.")
  (x_gripper m))

(cl:ensure-generic-function 'y_gripper-val :lambda-list '(m))
(cl:defmethod y_gripper-val ((m <move_all-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader grasping_controller-srv:y_gripper-val is deprecated.  Use grasping_controller-srv:y_gripper instead.")
  (y_gripper m))

(cl:ensure-generic-function 'z_gripper-val :lambda-list '(m))
(cl:defmethod z_gripper-val ((m <move_all-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader grasping_controller-srv:z_gripper-val is deprecated.  Use grasping_controller-srv:z_gripper instead.")
  (z_gripper m))

(cl:ensure-generic-function 'xr_gripper-val :lambda-list '(m))
(cl:defmethod xr_gripper-val ((m <move_all-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader grasping_controller-srv:xr_gripper-val is deprecated.  Use grasping_controller-srv:xr_gripper instead.")
  (xr_gripper m))

(cl:ensure-generic-function 'yr_gripper-val :lambda-list '(m))
(cl:defmethod yr_gripper-val ((m <move_all-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader grasping_controller-srv:yr_gripper-val is deprecated.  Use grasping_controller-srv:yr_gripper instead.")
  (yr_gripper m))

(cl:ensure-generic-function 'zr_gripper-val :lambda-list '(m))
(cl:defmethod zr_gripper-val ((m <move_all-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader grasping_controller-srv:zr_gripper-val is deprecated.  Use grasping_controller-srv:zr_gripper instead.")
  (zr_gripper m))

(cl:ensure-generic-function 'w_gripper-val :lambda-list '(m))
(cl:defmethod w_gripper-val ((m <move_all-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader grasping_controller-srv:w_gripper-val is deprecated.  Use grasping_controller-srv:w_gripper instead.")
  (w_gripper m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <move_all-request>) ostream)
  "Serializes a message object of type '<move_all-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x_obj))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'y_obj))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'z_obj))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'xr_obj))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'yr_obj))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'zr_obj))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'w_obj))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x_gripper))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'y_gripper))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'z_gripper))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'xr_gripper))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'yr_gripper))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'zr_gripper))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'w_gripper))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <move_all-request>) istream)
  "Deserializes a message object of type '<move_all-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x_obj) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y_obj) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z_obj) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'xr_obj) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yr_obj) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'zr_obj) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'w_obj) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x_gripper) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y_gripper) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z_gripper) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'xr_gripper) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yr_gripper) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'zr_gripper) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'w_gripper) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<move_all-request>)))
  "Returns string type for a service object of type '<move_all-request>"
  "grasping_controller/move_allRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'move_all-request)))
  "Returns string type for a service object of type 'move_all-request"
  "grasping_controller/move_allRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<move_all-request>)))
  "Returns md5sum for a message object of type '<move_all-request>"
  "20795865b6c39fea6fd2e03f6607e274")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'move_all-request)))
  "Returns md5sum for a message object of type 'move_all-request"
  "20795865b6c39fea6fd2e03f6607e274")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<move_all-request>)))
  "Returns full string definition for message of type '<move_all-request>"
  (cl:format cl:nil "float64 x_obj~%float64 y_obj~%float64 z_obj~%float64 xr_obj~%float64 yr_obj~%float64 zr_obj~%float64 w_obj~%float64 x_gripper~%float64 y_gripper~%float64 z_gripper~%float64 xr_gripper~%float64 yr_gripper~%float64 zr_gripper~%float64 w_gripper~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'move_all-request)))
  "Returns full string definition for message of type 'move_all-request"
  (cl:format cl:nil "float64 x_obj~%float64 y_obj~%float64 z_obj~%float64 xr_obj~%float64 yr_obj~%float64 zr_obj~%float64 w_obj~%float64 x_gripper~%float64 y_gripper~%float64 z_gripper~%float64 xr_gripper~%float64 yr_gripper~%float64 zr_gripper~%float64 w_gripper~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <move_all-request>))
  (cl:+ 0
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <move_all-request>))
  "Converts a ROS message object to a list"
  (cl:list 'move_all-request
    (cl:cons ':x_obj (x_obj msg))
    (cl:cons ':y_obj (y_obj msg))
    (cl:cons ':z_obj (z_obj msg))
    (cl:cons ':xr_obj (xr_obj msg))
    (cl:cons ':yr_obj (yr_obj msg))
    (cl:cons ':zr_obj (zr_obj msg))
    (cl:cons ':w_obj (w_obj msg))
    (cl:cons ':x_gripper (x_gripper msg))
    (cl:cons ':y_gripper (y_gripper msg))
    (cl:cons ':z_gripper (z_gripper msg))
    (cl:cons ':xr_gripper (xr_gripper msg))
    (cl:cons ':yr_gripper (yr_gripper msg))
    (cl:cons ':zr_gripper (zr_gripper msg))
    (cl:cons ':w_gripper (w_gripper msg))
))
;//! \htmlinclude move_all-response.msg.html

(cl:defclass <move_all-response> (roslisp-msg-protocol:ros-message)
  ((error_code
    :reader error_code
    :initarg :error_code
    :type cl:integer
    :initform 0))
)

(cl:defclass move_all-response (<move_all-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <move_all-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'move_all-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name grasping_controller-srv:<move_all-response> is deprecated: use grasping_controller-srv:move_all-response instead.")))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <move_all-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader grasping_controller-srv:error_code-val is deprecated.  Use grasping_controller-srv:error_code instead.")
  (error_code m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <move_all-response>) ostream)
  "Serializes a message object of type '<move_all-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <move_all-response>) istream)
  "Deserializes a message object of type '<move_all-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<move_all-response>)))
  "Returns string type for a service object of type '<move_all-response>"
  "grasping_controller/move_allResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'move_all-response)))
  "Returns string type for a service object of type 'move_all-response"
  "grasping_controller/move_allResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<move_all-response>)))
  "Returns md5sum for a message object of type '<move_all-response>"
  "20795865b6c39fea6fd2e03f6607e274")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'move_all-response)))
  "Returns md5sum for a message object of type 'move_all-response"
  "20795865b6c39fea6fd2e03f6607e274")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<move_all-response>)))
  "Returns full string definition for message of type '<move_all-response>"
  (cl:format cl:nil "int64 error_code~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'move_all-response)))
  "Returns full string definition for message of type 'move_all-response"
  (cl:format cl:nil "int64 error_code~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <move_all-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <move_all-response>))
  "Converts a ROS message object to a list"
  (cl:list 'move_all-response
    (cl:cons ':error_code (error_code msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'move_all)))
  'move_all-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'move_all)))
  'move_all-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'move_all)))
  "Returns string type for a service object of type '<move_all>"
  "grasping_controller/move_all")