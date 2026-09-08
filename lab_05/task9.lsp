(defun len-lol (list-of-list)
    (reduce #'(lambda (len x) (+ len (length x))) (cons 0 list-of-list)))

(print (len-lol '((1 2 3) (3 4 5) (2) (12 2 7))))