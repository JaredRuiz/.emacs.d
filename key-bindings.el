;; keybindings.el

;;quickly hop between brackets of functions
(define-key global-map (kbd "C-(") 'backward-sexp)
(define-key global-map (kbd "C-)") 'forward-sexp)

;;delete all blank lines between two paragraphs
(define-key global-map (kbd "C-x C-k") 'delete-blank-lines)

(define-key global-map (kbd "C-,") 'backward-kill-line)

(provide 'key-bindings)



