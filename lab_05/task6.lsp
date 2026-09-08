(defun select-between (lst left right)
  (remove-if-not (lambda (x) 
    (<= left x right)) lst))

(defun insert-sorted (x sorted)
  (let ((pos (position-if (lambda (y) (>= y x)) sorted)))
    (if pos
        (append (subseq sorted 0 pos) (list x) (subseq sorted pos))
        (append sorted (list x)))))

(defun select-between-sorted (lst left right)
  (reduce (lambda (acc x)
            (if (<= left x right)
                (insert-sorted x acc)
                acc))
          (cons () lst)))

(print (select-between '(4 2 1 8 5 14 6 10) 3 10))
(print (select-between-sorted '(4 2 1 8 5 14 6 10) 3 10))

