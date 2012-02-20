;;;; lisp environment
;;

;;;;
;; slime
;;

(load (expand-file-name "~/quicklisp/slime-helper.el"))
(setq inferior-lisp-program "/usr/local/bin/ccl64")

(eval-after-load "slime"
  '(progn
     (define-key slime-mode-map (kbd "C-M-f") 'forward-sexp)
     (define-key slime-mode-map (kbd "C-M-b") 'backward-sexp)
     (define-key slime-mode-map (kbd "C-M-x") 'slime-eval-buffer)
     (setq slime-net-coding-system 'utf-8-unix)))

(add-hook 'slime-repl-mode-hook (lambda ()
                                  (rainbow-delimiters-mode)
                                  (paredit-mode +1)))

(add-hook 'lisp-mode-hook (lambda ()
                            (paredit-mode +1)
                            (rainbow-delimiters-mode)))

(add-hook 'inferior-lisp-mode-hook (lambda ()
                                     (paredit-mode +1)
                                     (rainbow-delimiters-mode)))

(add-hook 'emacs-lisp-mode-hook (lambda ()
                                  (paredit-mode +1)
                                  (rainbow-delimiters-mode)))

(require 'lisp-helpers)

(provide 'lisp-env)
