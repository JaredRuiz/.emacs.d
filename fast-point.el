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
(defun fast-last-sentence-end ()
  (interactive)
        ;; if at beginning of paragraph
  (cond ((= (point) (progn (forward-sentence 1) (backward-sentence 1) (point)))
         (backward-sentence 1)
         (forward-sentence 1))
        ;; otherwise
        (t ;; what does this do??
         (backward-sentence 2)
         (forward-sentence 1))
        ))

;; this takes you to the first line of the next paragraph (sentence)
(defun fast-next-sentence-beginning ()
  (interactive)
        ;; if at end of paragraph
  (cond ((= (point) (progn (backward-sentence 1) (forward-sentence 1) (point)))
         (forward-sentence 1)
         (backward-sentence 1))
        ;; otherwise
        (t 
         (forward-sentence 2)
         (backward-sentence 1))
        ))

(provide 'fast-point)
   
