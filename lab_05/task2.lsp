(defun square_list (lst)
    (mapcar #'(lambda (num) (* num num)) lst))

(print (square_list '(1 2 4)))