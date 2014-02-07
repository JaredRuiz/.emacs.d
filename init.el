(add-to-list 'load-path "~/.emacs.d/")

;;To see if a function is bound to a key (and other stuff) do `C-h f function-name`
;;Conversely, given a key sequence, to get the function name do: `C-h k key-sequence`

;;not sure what this does??
(global-linum-mode 1)

;;store backup files in a folder other than where the files are actually contained
(setq backup-directory-alist '(("." . "~/.emacs.d/backup"))
  backup-by-copying t    ; Don't delink hardlinks
  version-control t      ; Use version numbers on backups
  delete-old-versions t  ; Automatically delete excess backups
  kept-new-versions 20   ; how many of the newest versions to keep
  kept-old-versions 5    ; and how many of the old
  )


 

;;(global-set-key "\C-," 'backward-kill-line)
;;I fudged this up...oh well
;;(define-key global-map [remap backward-kill-word] nil)

(require 'key-bindings)
(require 'appearance)
(require 'kill-and-delete)

;;Functions to add in the future
;; a function that deletes like C-del, but which doesnt place text in the kill ring
;; function to automatically place comments (with C-/ for instance)




