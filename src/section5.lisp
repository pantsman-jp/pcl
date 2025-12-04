;; function can contain documentation that is able to be ommitted
;; is that docstring?
(defun verbose-sum (x y)
  "add two number after displaying message."
  (format t "Summing ~d and ~d.~%" x y)
  (+ x y))

;; a, b are required parameter
;; c, d are optional parameter
;; optional parameter is allocated nil if you do not hand over argument to it
(defun foo1 (a b &optional c d) (list a b c d))

;; defalt value is available
;; a is required parameter, b is optional parameter; default value is 10
(defun foo2 (a &optional (b 10)) (list a b))

;; height is same with width when height is missed
(defun rectangle-area (width &optional (height width)) (* width height))

;; when you want to know whether parameter that is set default value is directed or not,
;; you can know that by adding "parametername-supplied-p" after argument.
;; that returns nil when the parameter is not directed or t otherwise.
(defun foo3 (a b &optional (c 3 c-supplied-p))
  (list a b c c-supplied-p))

;; keyword parameter
;; call like (foo4 :b 4 :c 0) and that returns (0 4 0 t)
(defun foo4 (&key (a 0) (b 0 b-supplied-p) (c (+ a b))) (list a b c b-supplied-p))

;; (apply #'plot #'exp plot-data-list)
(defun plot (fn min max step)
  (loop for i from min to max by step do
    (loop repeat (funcall fn i) do (format t "*"))
    (format t "~%")))
