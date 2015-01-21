;; kill-and-delete.el

;; Works like C-k, but from point to beginning of line,
;+ as opposed to end of line.
(defun backward-kill-line (arg) 
 "Kill ARG lines backward."
 (interactive "p")
 (kill-line (- 1 arg)))

;;this funciton doesnt work. cdr kill-ring is wrong below. Dont use for now
;; (defun ruthlessly-kill-line ()
;;   "Deletes a line without placing text in kill-ring (kinda)"
;;   (interactive)
;; ;;  (move-beginning-of-line 1)
;;   (backward-kill-word 1)
;;   (setq kill-ring (cdr kill-ring))
;;   )
;; (define-key global-map (kbd "C-=") 'ruthlessly-kill-line)

(defun remove-dos-eol ()
  "Do not show ^M in files containing mixed UNIX and DOS line endings."
  (interactive)
  (setq buffer-display-table (make-display-table))
  (aset buffer-display-table ?\^M []))

(provide 'kill-and-delete)

