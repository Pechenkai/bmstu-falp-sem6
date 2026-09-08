(defparameter *my-random-state* (make-random-state t))

(defun win_absolut (points)
    (or (= points 7) (= points 11)))

(defun roll_dice ()
    (+ (random 6 *my-random-state*) 1))

(defun player_turn (player)
    (let ((num1 (roll_dice))
        (num2 (roll_dice))) 
    (print (list player 'got num1 'and num2))
    (cond ((win_absolut (+ num1 num2)) 0)
        ((or (= (+ num1 num2) 2)
            (= (+ num1 num2) 12))
            (player_turn player))
            (T (+ num1 num2)))))

(defun get_result (score1 score2)
    (if (= 0 score2)
        (print "Player 2 won")
        (cond
            ((> score1 score2)(print "Player 1 won"))
            ((< score1 score2)(print "Player 2 won"))
            (T (print "Draw")))))

(defun dice-game()
    (let ((score1 (player_turn 1)))
    (if (= 0 score1)
        (print "Player 1 won")
        (get_result score1 (player_turn 2)))))

(apply #'dice-game ())