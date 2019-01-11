(add-to-list 'load-path "~/.emacs.d/lisp")
;; TODO: whats going on here ???
;;(add-to-list 'load-path "~/.emacs.d/wrap-region/")
(add-to-list 'load-path "~/.emacs.d/nxhtml/autostart.el")

;; jshint in emacs...see: https://github.com/daleharvey/jshint-mode
(setenv "PATH" (concat "/usr/local/bin:" (getenv "PATH")))
(setq exec-path
      '(
    "/usr/local/bin"
    "/usr/bin"
    ))
(add-to-list 'load-path "~/.emacs.d/jshint-mode")
(require 'flymake-jshint)
(add-hook 'javascript-mode-hook
     (lambda () (flymake-mode t)))

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
     ("marmalade" . "http://marmalade-repo.org/packages/")
     ("melpa" . "http://melpa.org/packages/")
     ("melpa-stable" . "https://stable.melpa.org/packages/")))

(require 'package)
(package-initialize)

;; (require 'wrap-region)
(require 'multiple-cursors)

;; store backup files in a folder other than where the files are actually contained
(setq backup-directory-alist '(("." . "~/.emacs.d/backup"))
  backup-by-copying t    ; Don't delink hardlinks
  version-control t      ; Use version numbers on backups
  delete-old-versions t  ; Automatically delete excess backups
  kept-new-versions 20   ; how many of the newest versions to keep
  kept-old-versions 5    ; and how many of the old
  )

(setq initial-scratch-message "Hello Jared! Hope you're having a nice day!!

Common functions:
 `C-h f function-name` -> info about a function
`C-h k key-sequence`   -> info about a key-binding
'C-h m'                -> info about current mode
'C-h b'                -> info about key bindings")

;; forward/backward/delete only goes to Uppercase
(global-subword-mode 1)

(add-hook 'shell-mode-hook 'my-shell-hook)

(add-hook 'eshell-preoutput-filter-functions
          'ansi-color-filter-apply)

(defun setup-tide-mode ()
  (interactive)
  (tide-setup)
  (flycheck-mode +1)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (eldoc-mode +1)
  (tide-hl-identifier-mode +1)
  (setq-default indent-tabs-mode nil)
  (setq-default tab-width 2)
  (setq indent-line-function 'insert-tab)
  
  ;; company is an optional dependency. You have to
  ;; install it separately via package-install
  ;; `M-x package-install [ret] company`
  (company-mode +1))

;; aligns annotation to the right hand side
(setq company-tooltip-align-annotations t)

;; formats the buffer before saving
(add-hook 'before-save-hook 'tide-format-before-save)

(add-hook 'typescript-mode-hook #'setup-tide-mode)



(require 'key-bindings)
(require 'appearance)
(require 'kill-and-delete)
(require 'improve-comments)
(require 'fast-point)
(require 'better-xml)
(require 'custom-shell)
(require 'csharp-mode)

;; only require on a mac
;; (require 'mac)

(put 'erase-buffer 'disabled nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(blink-cursor-mode nil)
 '(custom-enabled-themes (quote (wheatgrass)))
 '(package-selected-packages
   (quote
    (omnisharp ripgrep tide typescript-mode multiple-cursors dash)))
 '(show-paren-mode t)
 '(standard-indent 2)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "DejaVu Sans Mono" :foundry "unknown" :slant normal :weight normal :height 128 :width normal)))))
