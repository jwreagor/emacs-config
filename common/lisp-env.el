;;;; lisp environment
;;

;;;;
;; slime
;;

;; (setq inferior-lisp-program "/usr/local/bin/sbcl")
;; (add-to-list 'load-path "~/.emacs.d/vendor/slime")

;; (eval-after-load "slime"
;;   '(progn
;;      (setq slime-lisp-implementations
;;            '((sbcl ("/usr/local/bin/sbcl")))
;;             common-lisp-hyperspec-root "/home/sujoy/documents/hyperspec/")
;;      (slime-setup '(slime-asdf
;;                     slime-autodoc
;;                     slime-editing-commands
;;                     slime-fancy-inspector
;;                     slime-fontifying-fu
;;                     slime-fuzzy
;;                     slime-indentation
;;                     slime-mdot-fu
;;                     slime-package-fu
;;                     slime-references
;;                     slime-repl
;;                     slime-sbcl-exts
;;                     slime-scratch
;;                     slime-xref-browser))
;;      (slime-autodoc-mode)
;;      (setq slime-complete-symbol*-fancy t)
;;      (setq slime-complete-symbol-function 'slime-fuzzy-complete-symbol)
;;      (add-hook 'lisp-mode-hook (lambda ()
;;                                  (slime-mode t)))))

(eval-after-load "slime"
  '(progn
     (slime-setup '(slime-repl))
     (add-hook 'lisp-mode-hook (lambda ()
                                 (slime-mode t)))))


(require 'lisp-helpers)

(provide 'lisp-env)
