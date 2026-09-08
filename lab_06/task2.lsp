(defun proper-list-p (l)
    (cond
        ((null l) t)
        ((listp l) (listp (cdr l)))
        (t nil)
    )
)

(defun first_sublst (lst)
    (cond 
        ((proper-list-p (car lst)) (car lst))
        (T (first_sublst (cdr lst)))
    )
)

(print(first_sublst '()))
(print(first_sublst '(a b c (a b c) d (d e f) r)))
(print(first_sublst '(a b c (a . c) d (d e f) r)))
(print(first_sublst '(a c d r)))
