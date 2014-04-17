;; keybindings.el

;; RET just returns; C-m doesn't do anything
;; this is still fudging things up...
;; (global-unset-key (kbd "C-m"))
;; (global-unset-key (kbd "<return>"))
;; (define-key global-map (kbd "<return>") 'newline)

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
(define-key global-map (kbd "C-c C-a") 'fast-line-first-word)
;; Jumps to last word in line, skipping any spaces or comments
(define-key global-map (kbd "C-c C-e") 'fast-line-last-word)

;; auto-complete. Good for xsl completion and others.
(define-key global-map [C-tab] 'completion-at-point)

;; use to atuo-generate and ending tag when in nxml mode
(define-key global-map (kbd "C-c C-]") 'better-nxml-finish-element)

(define-key global-map (kbd "M-p") 'fast-last-sentence-end)
(define-key global-map (kbd "M-n") 'fast-next-sentence-beginning)

(define-key global-map (kbd "C-x M-p") 'fast-last-sentence-end-new)
(define-key global-map (kbd "C-x M-n") 'fast-next-sentence-beginning-new)



(provide 'key-bindings)



