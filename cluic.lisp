(defpackage cluic
  (:use #:cl #:cxml))

(in-package #:cluic)

(defun print-as-class (widget)
  )

(defun as-class (elt)
  (do-vector (elt (dom:child-nodes elt))
    (and (element-p elt)
         (string= (dom:tag-name elt) "widget")
         (print-as-class elt))))

(defun from-file (file)
  (let* ((parsed (parse-file file (cxml-dom:make-dom-builder)))
         (child-nodes (dom:child-nodes parsed)))
    (assert (= (length child-nodes) 1))
    (map 'vector #'as-class child-nodes)))

(defun from-string (str)
  )
