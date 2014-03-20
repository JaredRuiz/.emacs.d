;; custom-shell.el



(defun my-clear()
  (interactive)
  (erase-buffer)
  (comint-send-input))

(defun my-shell-hook()
  (local-set-key "\C-cl" 'my-clear))



(provide 'custom-shell)
     
     
