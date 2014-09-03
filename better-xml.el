;; better-xml.el

(defun better-nxml-finish-element ()
  (interactive)
  (nxml-finish-element)
  (previous-line 1)
  (move-end-of-line 1))

;; Benjamin Ferrari's kick-ass xml 'pretty print' function.
;; Dont even need to include (begin end). Just navigate to the beginning 
;+ of an xml doc and call this function.
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

(eval-after-load "nxml-mode"
  '(define-key nxml-mode-map (kbd "C-c C-f") nil))


(provide 'better-xml)
