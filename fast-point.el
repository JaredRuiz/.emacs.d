;; fast-point.el

(defun fast-line-first-word ()
  (interactive)
  (move-beginning-of-line 1)
  (forward-word 1)
  (backward-word 1))

(defun fast-line-last-word ()
  (interactive)
  (move-end-of-line 1)
  (backward-word 1)
  (forward-word 1))

;; this takes you to the last line of the previous paragraph (sentence)
;; will not continue going back however ...
(defun fast-last-sentence-end ()
  (interactive)
  (cond ((= (point) (progn (forward-sentence 1) (backward-sentence 1) (point)))
         (backward-sentence 1)
         (forward-sentence 1))
        ((= (point) (progn (back-to-indentation) (point)))
         (backward-sentence 1)
         (forward-sentence 1))
        ;; ((= (point) (progn (backward-sentence 1) (forward-sentence 1) (point)))
        ;;  (backward-sentence 2)
        ;;  (forward-sentence 1))
        (t 
         (backward-sentence 2)
         (forward-sentence 1))
        ))

;; this takes you to the last line of the previous paragraph (sentence)
;; as above, will not continue jumping forward
(defun fast-next-sentence-beginning ()
  (interactive)
  (cond ((= (point) (progn (backward-sentence 1) (forward-sentence 1) (point)))
         (forward-sentence 1)
         (backward-sentence 1))
        ((= (point) (progn (back-to-indentation) (point)))
         (forward-sentence 1)
         (backward-sentence 1))
        ;; ((= (point) (progn (backward-sentence 1) (forward-sentence 1) (point)))
        ;;  (backward-sentence 2)
        ;;  (forward-sentence 1))
        (t 
         (forward-sentence 2)
         (backward-sentence 1))
        ))

(provide 'fast-point)
   
