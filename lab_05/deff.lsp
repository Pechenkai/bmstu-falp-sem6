(defun phi (lst)
    (reduce (lambda (acc digit) (+ (* acc 2) digit)) lst :from-end t :initial-value 0))

(print (phi '(1 0 1 1)))