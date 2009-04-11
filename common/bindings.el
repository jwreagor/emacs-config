;;; Key bindings
;;

;;
;; Copy, Paste and Repeat
;;
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-t") 'tags-loop-continue)
(global-set-key (kbd "C-u") 'copy-region-as-kill)
(global-set-key (kbd "C-c C-c") 'comment-region)
(global-set-key (kbd "C-c C-v") 'uncomment-region)
(global-set-key (kbd "M-C-u") 'paste-to-osx)
(global-set-key (kbd "M-C-y") 'copy-from-osx)

;;
;; Misc
;;
(global-set-key (kbd "C-c C-u C-c") 'un-camelcase-string)
(global-set-key (kbd "C-t") 'universal-argument)

;;
;; Function keys
;;
(global-set-key [f1] 'menu-bar-mode) ;; menu bar hiding
(global-set-key [f2] 'goto-line)
(global-set-key [f12] 'elisp-index-search)

;;
;; Cleanup, Completion and Deletion
;;
(global-set-key "\C-\M-h" 'backward-kill-word) ;; like readline
(global-set-key (kbd "C-x \\") 'align-regexp) ;; align by regexp
(global-set-key (kbd "M-/") 'hippie-expand) ;; various keyword completion
(global-set-key (kbd "C-c n") (lambda () (interactive)
                                (indent-buffer)
                                (delete-trailing-whitespace)
                                (untabify-buffer)))

;;
;; Searching
;;
(global-set-key "\C-s" 'isearch-forward-regexp)
(global-set-key "\C-r" 'isearch-backward-regexp)
(global-set-key "\C-\M-s" 'isearch-forward)
(global-set-key "\C-\M-r" 'isearch-backward)

;;
;; Navigation
;;
(global-set-key "\M-n" 'scroll-one-line-up)
(global-set-key "\M-p" 'scroll-one-line-down)
(global-set-key "\C-x\C-i" 'ido-goto-symbol)
(windmove-default-keybindings) ;; Shift+direction window switching
(global-set-key "\C-xO" (lambda () (interactive) (other-window -1))) ;; back one
(global-set-key "\C-x\C-o" (lambda () (interactive) (other-window 2))) ;; forward two

;;
;; Finding Files
;;
(global-set-key (kbd "C-x M-f") 'ido-find-file-other-window)
(global-set-key (kbd "C-x C-M-f") 'find-file-in-project)
(global-set-key (kbd "C-x f") 'recentf-ido-find-file)
(global-set-key (kbd "C-x C-p") 'find-file-at-point)
(global-set-key (kbd "C-c y") 'bury-buffer)
(global-set-key (kbd "C-c r") 'revert-buffer)
(global-set-key (kbd "M-`") 'file-cache-minibuffer-complete)

;;
;; Lisp
;;
(define-key read-expression-map (kbd "TAB") 'lisp-complete-symbol)
(define-key lisp-mode-shared-map (kbd "RET") 'reindent-then-newline-and-indent)
(define-key lisp-mode-shared-map (kbd "C-\\") 'lisp-complete-symbol)
(define-key lisp-mode-shared-map (kbd "C-c s") 'my-eval-and-replace)
(define-key lisp-mode-shared-map (kbd "C-c v") 'eval-buffer)

;;
;; Shells
;;
(global-set-key (kbd "C-x m") 'eshell)
(global-set-key (kbd "C-x M") (lambda () (interactive) (eshell t)))
(global-set-key (kbd "C-x C-m") 'shell)

;;
;; Help
;;
(global-set-key (kbd "C-h a") 'apropos)
;;(global-set-key (kbd "C-h c") 'cheat)

(provide 'bindings)
;;; bindings.el eof

