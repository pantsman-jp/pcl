(defun verbose-sum (x y)
  "add two number after showing message"
  (format t "Summing ~d and ~d.~%" x y)
  (+ x y))

(defun foo (a b &optional c d)
  (list a b c d))

(defun foo2 (a &optional (b 10))
  (list a b))

(defun foo3 (a b &optional (c 3 c-supplied-p))
  (list a b c c-supplied-p))

(defun foo4 (&key a b c)
  (list a b c))

(defun foo5 (&key (a 0) (b 0 b-supplied-p) (c (+ a b)))
  (list a b c b-supplied-p))

(defun foo6 (&key ((:apple a)) ((:box b) 0) ((:charlie c) 0 c-supplied-p))
  (list a b c c-supplied-p))

; (defun foo7 (x &optional y &key z)
;   (list x y z))

(defun foo8 (&rest rest &key a b c)
  (list rest a b c))

(defun foo9 (n)
  (dotimes (i 10)
    (dotimes (j 10)
      (when (> (* i j) n)
	(return-from foo9 (list i j))))))

(defun plot (fn min max step)
  (loop for i from min to max by step do
    (loop repeat (funcall fn i) do (format t "*"))
    (format t "~%")))
