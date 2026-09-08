(defun mult_num_lst (lst num)
    (mapcar #'(lambda (el)
        (* el num))
            lst))

(defun mult_lst (lst num)
    (mapcar #'(lambda (el)
        (cond ((numberp el) (* el num))
            (T el)))
                lst))

(defun mult_lst_rek (lst num)
    (mapcar #'(lambda (el)
        (cond ((listp el) (mult_lst_rek el num)) 
            ((numberp el) (* el num))
            (T el)))
                lst))

(print (mult_lst '(1 2 a (1 2 3) 4) 5))
(print (mult_num_lst '(1 2 4) 5))
(print (mult_lst_rek '(1 2 a (1 (5 5 3) 3) 4) 5))
 