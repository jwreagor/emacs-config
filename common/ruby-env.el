;;; ruby development environment configuration
;;

(add-to-list 'load-path (concat common-dir "/ruby-env"))

(autoload 'ruby-mode "ruby-mode" "" t)
(autoload 'inf-ruby "inf-ruby" "" t)
(autoload 'ruby-electric-mode "ruby-electric" "" t)
(autoload 'ruby-compilation-minor-mode "ruby-compilation" "" t)

(add-hook 'ruby-mode-hook
          '(lambda ()
             (ruby-electric-mode)
             (require 'ruby-compilation)
             (local-unset-key "\t")
             (make-variable-buffer-local 'yas/trigger-key)
             (setq yas/trigger-key [TAB])))

;; (eval-after-load 'ruby-mode
;;   '(lambda
;;      (make-variable-buffer-local 'yas/trigger-key)
;;      (setq yas/trigger-key [TAB])))


;; (eval-after-load 'ruby-mode
;;   '(progn
;;      (require 'inf-ruby)
;;      (require 'ruby-compilation)
;;      (require 'ruby-electric)
;;      '(add-hook 'ruby-mode-hook 'ruby-electric-mode)))
;;(define-key ruby-mode-map (kbd "RET") 'reindent-then-newline-and-indent)
;;(define-key ruby-mode-map (kbd "C-c l") "lambda")

(global-set-key (kbd "C-c h r") 'ri)

;;;;
;; never edit compiled rubinius bytecode
;;

(add-to-list 'completion-ignored-extensions ".rbc")

;;
;; clear compilation buffer between test runs
;;

;; (eval-after-load 'ruby-compilation
;;   '(progn
;;      (defadvice ruby-do-run-w/compilation (before kill-buffer (name cmdlist))
;;        (let ((comp-buffer-name (format "*%s*" name)))
;;          (when (get-buffer comp-buffer-name)
;;            (with-current-buffer comp-buffer-name
;;              (delete-region (point-min) (point-max))))))
;;      (ad-activate 'ruby-do-run-w/compilation)))

;;
;; erb templates
;;

;; (add-to-list 'load-path (concat dotfiles-dir "/vendor/find-recursive"))
;; (add-to-list 'load-path (concat dotfiles-dir "/vendor/rhtml/"))
;; (add-to-list 'load-path (concat dotfiles-dir "/vendor/emacs-rails/"))
;; (require 'find-recursive)
;; (require 'nxml-mode)
;; (require 'rhtml-mode)
;; (require 'rails)

(provide 'ruby-env)
;; ruby.el eof
