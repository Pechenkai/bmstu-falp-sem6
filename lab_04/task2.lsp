(defun last-elem-1 (lst)
  (car (reverse lst)))

(print (apply #'last-elem-1 (list '(a b c))))