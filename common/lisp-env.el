;;;; lisp environment
;;

(defun cider-figwheel-repl ()
  (interactive)
  (save-some-buffers)
  (with-current-buffer (cider-current-repl-buffer)
    (goto-char (point-max))
    (insert "(require 'figwheel-sidecar.repl-api)
             (figwheel-sidecar.repl-api/start-figwheel!) ; idempotent
             (figwheel-sidecar.repl-api/cljs-repl)")
    (cider-repl-return)))

(defun hooks/for-lisp-modes ()
  (rainbow-delimiters-mode)
  (paredit-mode +1))

;;
;; repl
;;

(setq cider-repl-history-file "~/.emacs.d/cider-history")
(setq cider-repl-use-pretty-printing t)
(setq cider-repl-use-clojure-font-lock t)
(setq cider-repl-result-prefix ";; => ")
(setq cider-repl-wrap-history t)
(setq cider-repl-history-size 3000)
(setq cider-show-error-buffer nil)

;;
;; hooks
;;

;; (add-hook 'slime-repl-mode-hook 'hooks/for-lisp-modes)
;;(add-hook 'inferior-lisp-mode-hook 'hooks/for-lisp-modes)
(add-hook 'lisp-mode-hook 'hooks/for-lisp-modes)
(add-hook 'emacs-lisp-mode-hook 'hooks/for-lisp-modes)
(add-hook 'clojure-mode-hook 'hooks/for-lisp-modes)
(add-hook 'cider-repl-mode-hook 'hooks/for-lisp-modes)
(add-hook 'cider-mode-hook #'eldoc-mode)
(add-hook 'clojure-mode (lambda () (enable-paredit-mode)))

;;
;; keys
;;

(global-set-key (kbd "C-c C-f") #'cider-figwheel-repl)
;; (define-key (kbd "C-M-DEL") 'paredit-splice-sexp)

;;(rainbow-delimiters-mode)
(require 'lisp-helpers)

(provide 'lisp-env)
