;;; ruby environment
;;

;;;;
;; rbenv
;;

(require 'chruby)
(chruby "ruby-2.1.5")

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
                       "\\.cap$"
                       "\\.gemspec$"
                       "\\(Cap\\|Gem\\|Rake\\|Guard\\|Thor\\|Berks\\|Chef\\)file"])

(mapcar (lambda (str)
   (add-to-list 'auto-mode-alist `(,str . enh-ruby-mode)))
 ruby-file-types)

;;;;
;; enh-ruby-mode & rspec-mode configuration and hooks
;;

(add-to-list 'interpreter-mode-alist '("ruby" . enh-ruby-mode))

(setq enh-ruby-program
      (concat (file-name-as-directory
               (car chruby-current-ruby-binary-path)) "ruby"))

(add-hook 'enh-ruby-mode-hook
          '(lambda ()
            (require 'ruby-compilation)
            (ruby-electric-mode t)
            (inf-ruby-minor-mode)
            (local-set-key (kbd "C-c h r") 'ri)
            (local-set-key (kbd "TAB") nil)))


(add-hook 'after-init-hook 'inf-ruby-switch-setup)
(add-hook 'enh-ruby-mode-hook 'minitest-mode)
(add-hook 'rspec-mode-hook
          '(lambda ()
             (setq yas-extra-modes 'rspec-mode)))

;;;;
;; never edit compiled rubinius bytecode
;;

(add-to-list 'completion-ignored-extensions ".rbc")

(provide 'ruby-env)
;; ruby-env.el eof
