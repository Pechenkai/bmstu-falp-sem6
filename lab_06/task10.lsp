(defun single-level (lst)
    (cond 
        ((null lst) Nil)
        ((listp (car lst)) 
            (append (single-level (car lst)) (single-level (cdr lst))))
        (T (cons (car lst) (single-level (cdr lst))))))

(print (single-level '((1 (1 2 3) ((3 4 21)) 4 1) 4 (1 2 3))))