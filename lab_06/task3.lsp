(defun mult-num-lst (num lst)
    (cond 
        ((null lst) nil)
        (T (cons 
                (* num (car lst))
                (mult-num-lst num (cdr lst))))))

(defun mult-lst (num lst)
    (cond 
        ((null lst) nil)
        (T (cons (cond 
                    ((numberp (car lst)) (* num (car lst)))
                    (T (car lst)))
                (mult-lst num (cdr lst))))))

(print (mult-num-lst 5 '(1 2 3 5)))

(print (mult-lst 5 '(1 2 A 5 (1 2 3))))