(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'load-path "~/.emacs.d/wrap-region/")


;; store backup files in a folder other than where the files are actually contained
(setq backup-directory-alist '(("." . "~/.emacs.d/backup"))
  backup-by-copying t    ; Don't delink hardlinks
  version-control t      ; Use version numbers on backups
  delete-old-versions t  ; Automatically delete excess backups
  kept-new-versions 20   ; how many of the newest versions to keep
  kept-old-versions 5    ; and how many of the old
  )

(setq initial-scratch-message "Hello Jared! Hope you're having a nice day!!

To see if a function is bound to a key (and other stuff) do:
 `C-h f function-name`

Conversely, given a key sequence, to get the function name do: 
`C-h k key-sequence`")

;; forward/backward/delete only goes to Uppercase
(global-subword-mode 1)

(add-hook 'shell-mode-hook 'my-shell-hook)

(add-hook 'eshell-preoutput-filter-functions
          'ansi-color-filter-apply)

(add-hook 'comint-output-filter-functions
          'comint-watch-for-password-prompt)


(require 'key-bindings)
(require 'appearance)
(require 'kill-and-delete)
(require 'improve-comments)
(require 'fast-point)
(require 'better-xml)
(require 'custom-shell)

(require 'package)
(require 'package)
(add-to-list 'package-archives 
    '("marmalade" .
      "http://marmalade-repo.org/packages/"))
(package-initialize)
(require 'wrap-region)





;; only require on a mac
;; (require 'mac)

(put 'erase-buffer 'disabled nil)
