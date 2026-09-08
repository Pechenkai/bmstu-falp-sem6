(defun square-list (lst)
    (cond 
        ((null lst) Nil)
        (T (cons (* (car lst) (car lst)) (square-list (cdr lst))))))
    
(print (square-list '(1 2 3 4 5 6)))