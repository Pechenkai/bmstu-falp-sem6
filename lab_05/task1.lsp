(defun sub_ten (lst)
    (mapcar #'(lambda (el)
        (cond ((numberp el) (- el 10))
            (t el)))
            lst))

(defun sub_ten_num (lst)
    (mapcar #'(lambda (el)
        (- el 10))
            lst))

(print (sub_ten_num `(1 2 4)))

(print (sub_ten `(1 2 a (1 2 3) 4)))
