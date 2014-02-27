;; keybindings.el

;; RET just returns; C-m doesn't do anything
(global-unset-key (kbd "C-m"))
(global-unset-key (kbd "<return>"))
(define-key global-map (kbd "<return>") 'newline)

;; Quickly hop between brackets of functions
(define-key global-map (kbd "C-(") 'backward-sexp)
(define-key global-map (kbd "C-)") 'forward-sexp)

;; Delete all blank lines between two paragraphs
(define-key global-map (kbd "C-x C-k") 'delete-blank-lines)

;; Function in kill-and-delete.el
(define-key global-map (kbd "C-,") 'backward-kill-line)

;; Add quick comments
(define-key global-map (kbd "C-/") 'comment-or-uncomment-region-or-line)

;; Jumps to first word in line, skipping any spaces or comments
(define-key global-map (kbd "C-m C-a") 'fast-line-first-word)
;; Jumps to last word in line, skipping any spaces or comments
(define-key global-map (kbd "C-m C-e") 'fast-line-last-word)



(provide 'key-bindings)



