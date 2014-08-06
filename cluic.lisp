(defpackage cluic
  (:use #:cl #:cxml))

(in-package #:cluic)


(defun from-file (file)
  (let* ((parsed (parse-file file (cxml-dom:make-dom-builder)))
         (child-nodes (dom:child-nodes parsed)))
    (assert (= (length child-nodes) 1)))
  (error "not-implemented"))

(defun from-string (str)
  )
