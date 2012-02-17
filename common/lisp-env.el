;;;; lisp environment
;;

;;;;
;; slime
;;

(load (expand-file-name "~/quicklisp/slime-helper.el"))
(setq inferior-lisp-program "/usr/local/bin/ccl64")

;; (eval-after-load "slime"
;;   '(progn
;;      (slime-setup '(slime-repl))
;;      (add-hook 'lisp-mode-hook (lambda ()
;;                                  (slime-mode t)))))

(require 'lisp-helpers)

(provide 'lisp-env)
