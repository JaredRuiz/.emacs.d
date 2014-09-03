;; keybindings.el

;; Quickly hop between brackets of functions
(define-key global-map (kbd "C-(") 'backward-sexp)
(define-key global-map (kbd "C-)") 'forward-sexp)

;; Delete all blank lines between two paragraphs
(define-key global-map (kbd "C-x C-k") 'delete-blank-lines)

;; Function in kill-and-delete.el
(define-key global-map (kbd "C-,") 'backward-kill-line)

;; Add quick comments
(define-key global-map (kbd "C-/") 'comment-or-uncomment-region-or-line)
(define-key global-map (kbd "C-x C-/") 'indent-for-comment)

;; nxml key bindings
(define-key global-map [C-tab] 'completion-at-point)
(define-key global-map (kbd "C-c C-]") 'better-nxml-finish-element)
(define-key global-map (kbd "C-c C-f") 'nxml-forward-element)
(define-key global-map (kbd "C-c M-b") 'nxml-backward-element)

;;  general key-bindings
(define-key global-map (kbd "M-p") 'fast-last-sentence-end)
(define-key global-map (kbd "M-n") 'fast-next-sentence-beginning)
(define-key global-map (kbd "C-x M-p") 'fast-last-sentence-end-new) 
(define-key global-map (kbd "C-x M-n") 'fast-next-sentence-beginning-new)
(define-key global-map (kbd "C-c C-a") 'fast-line-first-word) 
(define-key global-map (kbd "C-c C-e") 'fast-line-last-word)
(global-set-key (kbd "C-'") 'insert-pair)

(provide 'key-bindings)



