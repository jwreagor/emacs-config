;;; key bindings
;;

;;;;
;; copy, paste and repeat
;;
(global-set-key (kbd "C-t")           'tags-loop-continue)
(global-set-key (kbd "C-u")           'copy-region-as-kill)
(global-set-key (kbd "C-c C-c")       'comment-region)
(global-set-key (kbd "C-c C-v")       'uncomment-region)
(global-set-key (kbd "C-c C-d")       'downcase-region)
(global-set-key (kbd "C-c c-u")       'upcase-region)
(global-set-key (kbd "M-C-u")         'copy-to-osx)
(global-set-key (kbd "M-C-y")         'paste-from-osx)
(global-set-key (kbd "C-k")           'nuke-line)
(global-set-key (kbd "C-M-k")         'copy-line)
(global-set-key (kbd "C-M-d")         'nuke-word)
(global-set-key (kbd "C-<backspace>") 'backward-nuke-word)
(global-set-key (kbd "M-<backspace>") 'backward-nuke-word)

;;;;
;; misc
;;
(global-set-key (kbd "C-c C-u C-c") 'un-camelcase-string)
(global-set-key (kbd "C-t")         'universal-argument)

;;;;
;; function keys
;;
(global-set-key [f1]  'info)
(global-set-key [f2]  'textmate-goto-symbol)
(global-set-key [f3]  'customize-group)
(global-set-key [f4]  'emacs-index-search)
(global-set-key [f5]  'elisp-index-search)
(global-set-key [f12] 'menu-bar-mode)

;;;;
;; cleanup, completion and deletion
;;
(global-set-key (kbd "C-x \\") 'align-regexp)
(global-set-key (kbd "M-/")    'hippie-expand)
(global-set-key (kbd "C-c n")  'clean-up-buffer-source)

;;;;
;; searching
;;
(global-set-key (kbd "C-s")   'isearch-forward-regexp)
(global-set-key (kbd "C-r")   'replace-regexp)
(global-set-key (kbd "C-M-s") 'isearch-forward)
(global-set-key (kbd "C-M-r") 'isearch-backward)
;;(global-set-key "\C-r" 'isearch-backward-regexp)

;;;;
;; navigation
;;
(global-set-key (kbd "M-n")     'scroll-one-line-up)
(global-set-key (kbd "M-p")     'scroll-one-line-down)
(global-set-key (kbd "C-x C-i") 'ido-goto-symbol)

(windmove-default-keybindings) ;; Shift+direction window switching

(global-set-key (kbd "C-x O") (lambda ()
                               (interactive)
                               (other-window -1)))

(global-set-key (kbd "C-x C-o") (lambda ()
                                  (interactive)
                                  (other-window 2)))

;;;;
;; finding files
;;
(global-set-key (kbd "C-x M-f")   'ido-find-file-other-window)
(global-set-key (kbd "C-x C-M-f") 'find-file-in-project)
(global-set-key (kbd "C-x f")     'recentf-ido-find-file)
(global-set-key (kbd "C-x C-p")   'find-file-at-point)
(global-set-key (kbd "C-c y")     'bury-buffer)
(global-set-key (kbd "C-c r")     'revert-buffer)
(global-set-key (kbd "M-`")       'file-cache-minibuffer-complete)

;;;;
;; lisp
;;
(define-key read-expression-map (kbd "TAB") 'lisp-complete-symbol)
(define-key lisp-mode-shared-map (kbd "RET") 'reindent-then-newline-and-indent)
(define-key lisp-mode-shared-map (kbd "C-\\") 'lisp-complete-symbol)
(define-key lisp-mode-shared-map (kbd "C-c s") 'my-eval-and-replace)
(define-key lisp-mode-shared-map (kbd "C-c v") 'eval-buffer)

;;;;
;; shells
;;
(global-set-key (kbd "C-x m") 'eshell)
(global-set-key (kbd "C-x M") (lambda () (interactive) (eshell t)))
(global-set-key (kbd "C-x C-m") 'shell)

;;;;
;; help
;;
(global-set-key (kbd "C-h a") 'apropos)
(global-set-key (kbd "C-h c") 'cheat)

(provide 'bindings)
;;; bindings.el eof

