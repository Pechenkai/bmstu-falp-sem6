(defun rec-first-odd (lst)
    (cond 
        ((null lst) nil)
        ((listp (car lst)) 
            (or 
                (rec-first-odd (car lst))
                (rec-first-odd (cdr lst))))
        ((and (numberp (car lst)) (oddp (car lst)))
            (car lst))
        (t (rec-first-odd (cdr lst)))))

(print (rec-first-odd '(1 2 3 4 5)))
(print (rec-first-odd '((2 5 (3 2 4)) 3 A (1 2 3))))