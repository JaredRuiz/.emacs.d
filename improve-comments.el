;; improve-comments.el

;; smart-comment function
(defun comment-or-uncomment-region-or-line ()
    "Comments or uncomments the region or the current line if there's no active region."
    (interactive)
    (let (beg end)
        (if (region-active-p)
            (setq 
                     beg (region-beginning) 
                     end (region-end)
            )
            (
             setq 
             beg (line-beginning-position) 
             end (line-end-position)
             ) ;; setq
          ) ;; if
        (comment-or-uncomment-region beg end)))

;; adds comments at the end of functions
(defun insert-end-function-comment ()
  (interactive)
  ;; (move-end-of-line)
  (let (beg end)
    (setq 
              beg (point) 
              end (line-end-position)))
  (comment-or-uncomment-region beg end)) 
  ;; (insert "a string"))





(provide 'improve-comments)
