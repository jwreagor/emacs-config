;;; ruby environment
;;

;;(add-to-list 'load-path (concat common-dir "/ruby-env"))

;;;;
;; autoloads for libraries
;;

(autoload 'enh-ruby-mode "enh-ruby-mode" "" t)
(autoload 'rspec-mode "rspec-mode" "" t)
(autoload 'ruby-electric-mode "ruby-electric" "" t)
(autoload 'ruby-compilation-minor-mode "ruby-compilation" "" t)
(autoload 'inf-ruby "inf-ruby" "" t)
(autoload 'inf-ruby-setup-keybindings "inf-ruby" "" t)

(setq ruby-file-types ["\\.rb$"
                       "\\.rake$"
                       "\\.gemspec$"
                       "\\(Cap\\|Gem\\|Rake\\|Guard\\|Thor\\|Berks\\)file"])

(mapcar (lambda (str)
   (add-to-list 'auto-mode-alist `(,str . enh-ruby-mode)))
 ruby-file-types)

;;;;
;; enh-ruby-mode & rspec-mode configuration and hooks
;;

(add-to-list 'interpreter-mode-alist '("ruby" . enh-ruby-mode))

(setq enh-ruby-program (getenv "ENH_RUBY"))

(add-hook 'enh-ruby-mode-hook
          '(lambda ()
            (require 'ruby-compilation)
            (ruby-electric-mode t)
            (inf-ruby-setup-keybindings)
            (local-set-key (kbd "C-c h r") 'ri)
            (local-set-key (kbd "TAB") nil)))


(add-hook 'rspec-mode-hook
          '(lambda ()
             (setq yas-extra-modes 'rspec-mode)))

;;;;
;; never edit compiled rubinius bytecode
;;

(add-to-list 'completion-ignored-extensions ".rbc")

(provide 'ruby-env)
;; ruby-env.el eof
