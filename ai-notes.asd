;;
;; Copyright (c) 2022, Peter Seibel. All rights reserved.
;;

(defsystem ai-notes
  :name "ai-notes"
  :description "AI notes markup"
  :components
  ((:file "packages")
   (:file "lisp" :depends-on ("packages")))
  :depends-on
  (:cl-ppcre
   :monkeylib-utilities
   :monkeylib-yamp))
