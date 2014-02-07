;; appearance.el

;; Remove initial "Emacs" splash screen
(setq inhibit-startup-message t)

;;Color options, etc.
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

;;gives column numbers 
(setq column-number-mode t)

;;function to display file pathnames, in reverse order, so as to easier identify and switch buffers
(require 'uniquify)
(setq uniquify-buffer-name-style 'reverse)

;; Trying to get tabs working correctly
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq indent-line-function `insert-tab)
(setq js-indent-level 2)

;; Benjamin Ferrari's kick-ass xml 'pretty print' function.
;; Dont even need to include (begin end). Just navigate to the beginning of an xml doc and call function
;; TODO: perhaps move this to an xml-specific file later on
(defun bf-pretty-print-xml-region (begin end)
  "Pretty format XML markup in region. You need to have nxml-mode
http://www.emacswiki.org/cgi-bin/wiki/NxmlMode installed to do
this.  The function inserts linebreaks to separate tags that have
nothing but whitespace between them.  It then indents the markup
by using nxml's indentation rules."
  (interactive "r")
  (save-excursion
      (nxml-mode)
      (goto-char begin)
      (while (search-forward-regexp "\>[ \\t]*\<" nil t) 
        (backward-char) (insert "\n"))
      (indent-region begin end))
  (indent-region)
    (message "Ah, much better!"))

(provide 'appearance)
