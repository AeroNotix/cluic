(in-package #:cluic)


(defmacro do-vector (var-seq &body body)
  (destructuring-bind (var seq) var-seq
    (let ((vector (gensym "VECTOR"))
          (index (gensym "INDEX")))
      `(let ((,vector ,seq))
         (dotimes (,index (length ,vector))
           (let ((,var (aref ,vector ,index)))
             ,@body))))))
