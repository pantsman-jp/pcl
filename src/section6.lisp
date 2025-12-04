(defun foo (x)
  (format t "Parameter: ~a~%" x)
  (let ((x 2))
    (format t "Outer LET: ~a~%" x)
    (let ((x 3))
      (format t "Inner LET: ~a~%" x))
    (format t "Outer LET: ~a~%" x))
  (format t "Parameter: ~a~%" x))

(defparameter *fn* (let ((count 0)) #'(lambda () (setf count (1+ count)))))

(defvar *count* 0)
(defparameter *gap-tolerance* 0.001)

(defun increment-widget-count () (incf *count*))
