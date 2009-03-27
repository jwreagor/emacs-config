;;;; justin-bindings.el --- Where all my bindings is be
;;
;; Part of my own Emacs Kit
;;
;; * This is the second thing to get loaded.
;; * It loads up a slew of Minor and Major modes, for various languages.
;; * Most are setup to auto-load when a certain file name is detected
;;
;; Justin Reagor / cheapRoc [http://github.com/cheapRoc] 2008-09
;;

(defun scroll-one-line-up (&optional arg)
  "Scroll the selected window up (forward in the text) one line (or N lines)."
  (interactive "p")
  (scroll-up (or arg 1)))

(defun scroll-one-line-down (&optional arg)
  "Scroll the selected window down (backward in the text) one line (or N)."
  (interactive "p")
  (scroll-down (or arg 1)))

(defun copy-from-osx ()
  (shell-command-to-string "pbpaste"))

(defun paste-to-osx (text &optional push)
  (let ((process-connection-type nil))
    (let ((proc (start-process "pbcopy" "*Messages*" "pbcopy")))
      (process-send-string proc text)
      (process-send-eof proc))))
;; CamelCase

(defun un-camelcase-string (s &optional sep start)
  "Convert CamelCase string S to lower case with word separator SEP.
    Default for SEP is an underscore \"_\".
    If third argument START is non-nil, convert words after that
    index in STRING."
  (let ((case-fold-search nil))
    (while (string-match "[A-Z]" s (or start 1))
      (setq s (replace-match (concat (or sep "_")
                                     (downcase (match-string 0 s)))
                             t nil s)))
    (downcase s)))

(setq interprogram-cut-function 'paste-to-osx)
(setq interprogram-paste-function 'copy-from-osx)

(global-set-key [f12] 'elisp-index-search)
(global-set-key [f2] 'goto-line)

(global-set-key "\M-n" 'scroll-one-line-up)
(global-set-key "\M-p" 'scroll-one-line-down)
(global-set-key "\C-u" 'copy-region-as-kill)
(global-set-key "\C-t" 'universal-argument)

(global-set-key (kbd "C-c C-u C-c") 'un-camelcase-string)
(global-set-key (kbd "C-c C-c") 'comment-region)
(global-set-key (kbd "C-c C-v") 'uncomment-region)

;; fail?
(global-set-key (kbd "M-C-u") 'interprogram-cut-function)

(provide 'justin-bindings)