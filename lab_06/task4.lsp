; (defun select-between (lst left right)
;             (cond 
;                 ((null lst) Nil)
;                 ((< left (car lst) right) 
;                     (cons (car lst) (select-between (cdr lst) left right)))
;                 (T (select-between (cdr lst) left right))
;             )
; )

(defun insert-sorted (x lst)
  (if (or (null lst) (< x (car lst)))
      (cons x lst)
      (cons (car lst) (insert-sorted x (cdr lst)))))

(defun select-between (lst left right)
  (if (null lst)
      nil
      (if (and (>= (car lst) left) (<= (car lst) right))
          (insert-sorted (car lst) (select-between (cdr lst) left right))
          (select-between (cdr lst) left right))))

(print (select-between '(1 3 2 5 2 -1 5 6 8) 0 4))