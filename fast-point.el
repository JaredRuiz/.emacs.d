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

(provide 'fast-point)
   
