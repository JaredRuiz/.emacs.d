(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'load-path "~/.emacs.d/wrap-region/")
(add-to-list 'load-path "~/.emacs.d/nxhtml/autostart.el")

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                        ("marmalade" . "http://marmalade-repo.org/packages/")))
(require 'package)
(add-to-list 'package-archives 
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)
(require 'wrap-region)



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

;; (add-hook 'comint-output-filter-functions
;;           'comint-watch-for-password-prompt)



(require 'key-bindings)
(require 'appearance)
(require 'kill-and-delete)
(require 'improve-comments)
(require 'fast-point)
(require 'better-xml)
(require 'custom-shell)

;; only require on a mac
;; (require 'mac)

(put 'erase-buffer 'disabled nil)
