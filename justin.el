;;;; justin.el --- Where all my crap is added in
;;
;; Part of my own Emacs Kit
;;
;; * This is the second thing to get loaded.
;; * It loads up a slew of Minor and Major modes, for various languages.
;; * Most are setup to auto-load when a certain file name is detected
;;
;; Justin Reagor / cheapRoc [http://github.com/cheapRoc] 2008-09
;;

;;
;; Load areas
;;

(add-to-list 'load-path (concat dotfiles-dir "/vendor"))
(add-to-list 'load-path (concat dotfiles-dir "/vendor/color-theme"))
(add-to-list 'load-path (concat dotfiles-dir "/vendor/yasnippet.el"))

(require 'unbound)
;; (require 'autospec)

;;
;; Minor Modes
;;

(require 'yasnippet)
(yas/initialize)
(yas/load-directory (concat dotfiles-dir "/vendor/yasnippet.el/snippets"))
(yas/load-directory (concat dotfiles-dir "/vendor/rspec/snippets"))

(add-to-list 'load-path (concat dotfiles-dir "/vendor/textmate.el"))
(require 'textmate)
(textmate-mode)

;;
;; Major Modes
;;

(autoload 'markdown-mode "markdown-mode.el" "" t)
(add-to-list 'auto-mode-alist '("\\.[md|markdown]\\'" . markdown-mode))

(autoload 'haml-mode "haml-mode" "" t)
(add-to-list 'auto-mode-alist '("\\.haml$" . haml-mode))

(autoload 'sass-mode "sass-mode" "" t)
(add-to-list 'auto-mode-alist '("\\.sass$" . sass-mode))

(autoload 'yaml-mode "yaml-mode" "" t)
(add-to-list 'auto-mode-alist '("\\.ya?ml$" . yaml-mode))

(autoload 'ruby-electric-mode "ruby-electric" "" t)
(add-hook 'ruby-mode-hook 'ruby-electric-mode)

(autoload 'js2-mode "js2" "" t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)
(add-hook 'eshell-mode-hook 'ansi-color-for-comint-mode-on)

;;
;; Color Theme
;;

(require 'color-theme)
(color-theme-initialize)

(when (window-system)
   (color-theme-tango-2))
;; (color-theme-github))
;; (color-theme-charcoal-black))
;; (color-theme-vivid-chalk))
;; (color-theme-twilight))
;; (color-theme-gray30))

;;
;; Ruby mode within Erb templates
;;

;; (add-to-list 'load-path (concat dotfiles-dir "/vendor/find-recursive"))
;; (add-to-list 'load-path (concat dotfiles-dir "/vendor/rhtml/"))
;; (add-to-list 'load-path (concat dotfiles-dir "/vendor/emacs-rails/"))
;; (require 'find-recursive)
;; (require 'nxml-mode)
;; (require 'rhtml-mode)
;; (require 'rails)

;;
;; Keyboard
;;

(require 'mac-bindings)
(require 'justin-bindings)

;;
;; Misc
;;

(column-number-mode)
(prefer-coding-system 'utf-8)

;;
;; Emacs server
;;

(server-start)

;;
;; Time/Power Display
;;

(display-time-mode)
(display-battery-mode)

;;
;; w3m Web Browser
;;

(add-to-list 'load-path "/usr/local/share/emacs/site-lisp/w3m")
(require 'w3m-load)

;;
;; give it up
;;

(provide 'justin)
