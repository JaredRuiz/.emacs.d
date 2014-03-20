;; appearance.el

;; Removes initial "Emacs" splash screen
(setq inhibit-startup-message t)

;; Color options, etc.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(blink-cursor-mode nil)
 '(custom-enabled-themes (quote (wheatgrass)))
 '(show-paren-mode t)
 '(standard-indent 2)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "DejaVu Sans Mono" :foundry "unknown" :slant normal :weight normal :height 128 :width normal)))))

;; Gives line numbers on side of buffer
(global-linum-mode 1)

;; Gives column numbers at bottom of buffer
(setq column-number-mode t)

;; Display file pathnames, in reverse order, so as to easier identify
;+  and switch buffers
(require 'uniquify)
(setq uniquify-buffer-name-style 'reverse)

;; Trying to get tabs working correctly
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq indent-line-function `insert-tab)
(setq js-indent-level 2)
(setq sh-basis-offset 0
      sh-indentation 2
      sh-indent-for-case-label 0
      sh-indent-for-case-alt '+)

(provide 'appearance)
