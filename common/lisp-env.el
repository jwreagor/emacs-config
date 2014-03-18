;;;; lisp environment
;;

;;;;
;; slime
;;

(load (concat dotfiles-dir "quicklisp/slime-helper.el"))
(setq inferior-lisp-program "/usr/local/bin/ccl64")

(add-hook 'nu-mode-hook               (lambda () (enable-paredit-mode)))
(add-hook 'clojure-mode               (lambda () (enable-paredit-mode)))

(eval-after-load "slime"
  '(progn
     (define-key slime-mode-map (kbd "C-M-f") 'forward-sexp)
     (define-key slime-mode-map (kbd "C-M-b") 'backward-sexp)
     (define-key slime-mode-map (kbd "C-M-x") 'slime-eval-buffer)
     (setq slime-net-coding-system 'utf-8-unix)))

(defun hooks/for-lisp-modes ()
  (rainbow-delimiters-mode)
  (paredit-mode +1))

(add-hook 'slime-repl-mode-hook 'hooks/for-lisp-modes)
(add-hook 'lisp-mode-hook 'hooks/for-lisp-modes)
(add-hook 'inferior-lisp-mode-hook 'hooks/for-lisp-modes)
(add-hook 'emacs-lisp-mode-hook 'hooks/for-lisp-modes)
(add-hook 'clojure-mode-hook 'hooks/for-lisp-modes)

(require 'lisp-helpers)

(provide 'lisp-env)
