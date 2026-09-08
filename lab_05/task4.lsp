(defun palindromep (lst)
    (every #'(lambda (x) x)
        (mapcar #'(lambda (x y) (equal x y))
            lst
            (reverse lst))))

(print (palindromep '(1 2 A 2 1)))
(print (palindromep '(1 2 A 1)))
(print (palindromep '(1 2 A A 2 1)))
(print (palindromep '(1)))



