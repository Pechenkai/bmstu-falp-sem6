(defun allodd (lst)
    (cond 
        ((null lst) T)
        ((and (numberp (car lst)) (oddp (car lst))) (allodd (cdr lst)))
        (T Nil)))

(print (allodd '(1 3 4 5 6 7 8)))
(print (allodd '(1 3 5 7 9)))
(print (allodd '(1 3 A 5 B 7 (1 2 3))))