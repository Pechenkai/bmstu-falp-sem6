(defun decart (lst1 lst2)
    (mapcan #'(lambda (x)
        (mapcar #'(lambda (y)
            (list x y)) lst2))
            lst1))

(print (decart '(A B C) '(4 3 2 1)))
