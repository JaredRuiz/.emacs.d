(add-to-list 'load-path "~/.emacs.d/")

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
`C-h k key-sequence`

Further ideas:
 C-x C-a --> let this act as a shortcut to immediately jump to the beginning of the first word of a line 
 (hence if there are indentations or comments, it will skip over those)



")

(require 'key-bindings)
(require 'appearance)
(require 'kill-and-delete)
(require 'improve-comments)
(require 'fast-point)

;; only require on a mac
;; (require 'mac)

