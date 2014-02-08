;; keybindings.el

;; Quickly hop between brackets of functions
(define-key global-map (kbd "C-(") 'backward-sexp)
(define-key global-map (kbd "C-)") 'forward-sexp)

;; Delete all blank lines between two paragraphs
(define-key global-map (kbd "C-x C-k") 'delete-blank-lines)

;; Function in kill-and-delete.el
(define-key global-map (kbd "C-,") 'backward-kill-line)

;; Add quick comments
;;(define-key global-map (kbd "C-/") 'comment-dwim) 
(define-key global-map (kbd "C-/") 'comment-or-uncomment-region-or-line)


(provide 'key-bindings)



