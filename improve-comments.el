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

(provide 'improve-comments)
