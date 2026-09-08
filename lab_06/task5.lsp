; (defun rec-add (lst)
;   (if (null lst)
;       0
;       (+ (if (numberp (car lst)) (car lst) 0)
;          (rec-add (cdr lst)))))

(defun rec-add (lst)
  (if (null lst)
      0
      (+ (cond ((listp (car lst)) (rec-add (car lst)))
                ((numberp (car lst)) (car lst))
                (t 0))
         (rec-add (cdr lst)))))

(print (rec-add '(1 A 5 (5 7 5 (1 2 3)) 4 l (1 2 3))))