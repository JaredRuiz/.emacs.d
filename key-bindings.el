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

;; easy keys to split window.
;; (global-set-key (kbd "M-1") 'split-window-vertically)
;; (global-set-key (kbd "M-2") 'split-window-horizontally)
;; (global-set-key (kbd "M-3") 'delete-window)
;; (global-set-key (kbd "M-4") 'delete-other-windows)
;; These seem to work better..
(global-set-key (kbd "<M-up>") 'split-window-vertically)
(global-set-key (kbd "<M-right>") 'split-window-horizontally)
(global-set-key (kbd "<M-left>") 'delete-window)
(global-set-key (kbd "<M-down>") 'delete-other-windows)
(global-set-key (kbd "M-s") 'other-window)

(provide 'key-bindings)



