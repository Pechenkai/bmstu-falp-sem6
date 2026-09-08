(defun recnth (idx lst)
    (cond 
        ((null lst) Nil)
        ((= idx 0) (car lst))
        (T (recnth (- idx 1) (cdr lst)))))

(print (recnth 3 '(1 2 3 4 5 6)))