
(cl:in-package :asdf)

(defsystem "grasping_controller-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "MakeIK" :depends-on ("_package_MakeIK"))
    (:file "_package_MakeIK" :depends-on ("_package"))
    (:file "MoveIRB120" :depends-on ("_package_MoveIRB120"))
    (:file "_package_MoveIRB120" :depends-on ("_package"))
    (:file "MoveAll" :depends-on ("_package_MoveAll"))
    (:file "_package_MoveAll" :depends-on ("_package"))
  ))