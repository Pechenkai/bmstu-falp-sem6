(defun roll-dice ()
  "Бросает две кости и возвращает список из двух чисел."
  (list (+ 1 (random 6))
        (+ 1 (random 6))))

(defun evaluate-roll (dice)
  "Оценивает результат броска.
Возвращает список из двух элементов:
  (result-type result-sum),
где result-type – 'absolute, 'extra или 'normal,
а result-sum – сумма выпавших костей."
  (let* ((die1 (first dice))
         (die2 (second dice))
         (sum (+ die1 die2)))
    (cond ((or (= sum 7) (= sum 11))
           (list 'absolute sum))
          ((or (and (= die1 1) (= die2 1))
               (and (= die1 6) (= die2 6)))
           (list 'extra sum))
          (t
           (list 'normal sum)))))

(defun player-turn (player)
  "Осуществляет ход игрока.
Возвращает список из трёх элементов:
  (result-type score dice-rolls)
где result-type – тип результата ('absolute или 'normal),
      score – итоговая сумма броска, используемая для сравнения,
      dice-rolls – список бросков (каждый бросок – список из двух чисел).
Если первый бросок дает результат 'extra, выполняется один дополнительный бросок."
  (print (format nil "~A's turn:" player))
  (let ((roll1 (roll-dice)))
    (print (list (format nil "~A rolled:" player)
                 (first roll1) (second roll1)
                 "sum:" (+ (first roll1) (second roll1))))
    (let ((result1 (evaluate-roll roll1)))
      (cond ((eq (first result1) 'absolute)
             (print (format nil "~A wins absolutely!" player))
             (list 'absolute (second result1) (list roll1)))
            ((eq (first result1) 'extra)
             (print (format nil "Extra throw granted for ~A." player))
             (let ((roll2 (roll-dice)))
               (print (list (format nil "~A extra rolled:" player)
                            (first roll2) (second roll2)
                            "sum:" (+ (first roll2) (second roll2))))
               (let ((result2 (evaluate-roll roll2)))
                 (cond ((eq (first result2) 'absolute)
                        (print (format nil "~A wins absolutely on extra!" player))
                        (list 'absolute (second result2) (list roll1 roll2)))
                       (t
                        (list 'normal (second result2) (list roll1 roll2)))))))
            (t
             (list 'normal (second result1) (list roll1)))))))

(defun dice-game ()
  (let ((p1 (player-turn "Player 1"))
        (p2 (player-turn "Player 2")))
    (if (or (eq (first p1) 'absolute)
            (eq (first p2) 'absolute))
        nil
        (progn
          (print (list "Player 1 final score:" (second p1)))
          (print (list "Player 2 final score:" (second p2)))
          (cond ((> (second p1) (second p2))
                 (print "Player 1 wins with higher score!"))
                ((< (second p1) (second p2))
                 (print "Player 2 wins with higher score!"))
                (t
                 (print "It's a tie!")))))))

(print (apply #'dice-game ()))