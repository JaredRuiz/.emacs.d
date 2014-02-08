(add-to-list 'load-path "~/.emacs.d/")

;;store backup files in a folder other than where the files are actually contained
(setq backup-directory-alist '(("." . "~/.emacs.d/backup"))
  backup-by-copying t    ; Don't delink hardlinks
  version-control t      ; Use version numbers on backups
  delete-old-versions t  ; Automatically delete excess backups
  kept-new-versions 20   ; how many of the newest versions to keep
  kept-old-versions 5    ; and how many of the old
  )

(require 'key-bindings)
(require 'appearance)
(require 'kill-and-delete)
(require 'improve-comments)
;; only require on a mac
(require 'mac)

