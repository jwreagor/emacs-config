;;; ruby development environment configuration
;;

(add-to-list 'load-path (concat common-dir "/ruby-env"))
(add-to-list 'load-path (concat vendor-dir "/rinari"))

;;;;
;; autoloads for libraries
;;

(autoload 'ruby-mode "ruby-mode" "" t)
(autoload 'inf-ruby "inf-ruby" "" t)
(autoload 'ruby-electric-mode "ruby-electric" "" t)
(autoload 'ruby-compilation-minor-mode "ruby-compilation" "" t)
(autoload 'rinari-minor-mode "rinari" "" t)

;;;;
;; ruby-mode hooks
;;

(add-hook 'ruby-mode-hook
          '(lambda ()
             (ruby-electric-mode)
             (rinari-minor-mode)
             (require 'ruby-compilation)
             (local-unset-key "\t")
             (make-variable-buffer-local 'yas/trigger-key)
             (setq yas/trigger-key [TAB])
             (local-set-key (kbd "C-c h r") 'ri)
             (local-set-key (kbd "RET") 'reident-then-newline-and-indent)))

;;;;
;; never edit compiled rubinius bytecode
;;

(add-to-list 'completion-ignored-extensions ".rbc")

(provide 'ruby-env)
;; ruby.el eof
