(defun set-equal (set1 set2)
  (and (every (lambda (x) (member x set2)) set1)
       (every (lambda (x) (member x set1)) set2)))

(print (set-equal '(1 2 3) '(3 1 2)))
(print (set-equal '(1 2 3) '(3 5 2)))
(print (set-equal '(1 2 8) '(3 1 2)))
(print (set-equal '(1 2 8) '(3 1 1)))
(print (set-equal '(1 A 8) '(A A 1 8)))
