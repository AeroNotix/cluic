(defpackage cluic
  (:use #:cl #:cxml))

(in-package #:cluic)


(defun from-file (file)
  (let ((parsed (parse-file file (cxml-dom:make-dom-builder))))
    parsed))

(defun from-string (str)
  )
