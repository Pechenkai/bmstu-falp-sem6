(defun my-reverse (lst)
    (cond 
        ((null lst) Nil)
        (t (append (my-reverse (cdr lst))
                    (cons (car lst) Nil)
            )
        )
    )
)

 
(print (my-reverse `(1 2 3 4 5)))