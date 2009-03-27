;; DESCRIPTION: cheapRoc settings
(add-to-list 'load-path (concat dotfiles-dir "/vendor"))

;; Snippets

(add-to-list 'load-path "~/.emacs.d/vendor/yasnippet.el")
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/vendor/yasnippet.el/snippets")

;; Commands

(require 'unbound)

;; Minor Modes

(add-to-list 'load-path "~/.emacs.d/vendor/textmate.el")
(require 'textmate)
(textmate-mode)

;; Major Modes

(require 'textile-mode)
(add-to-list 'auto-mode-alist '("\\.textile\\'" . textile-mode))

(autoload 'markdown-mode "markdown-mode.el"
   "Major mode for editing Markdown files" t)

(require 'haml-mode)
(add-to-list 'auto-mode-alist '("\\.haml$" . haml-mode))

(require 'sass-mode)
(add-to-list 'auto-mode-alist '("\\.sass$" . sass-mode))

;; Keyboard

(require 'mac-bindings)

;; Color Themes

(add-to-list 'load-path (concat dotfiles-dir "/vendor/color-theme"))
(require 'color-theme)
(color-theme-initialize)
(color-theme-tango-2)

;;(color-theme-charcoal-black)
;;(color-theme-github)
;;(color-theme-twilight)
;;(color-theme-gray30)

;; UTF-8 h4x0r
(prefer-coding-system 'utf-8)

;; Boot the emacs server
;; (server-start)

;; Load up ansi color for beautiful colors in eshell
(add-to-list 'load-path (concat dotfiles-dir "/vendor/ansi-color"))
(require 'ansi-color)
(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

;; Load Ruby Electric for some niceities
(add-to-list 'load-path (concat dotfiles-dir "/vendor/ruby-electric"))
(require 'ruby-electric)
(autoload 'ruby-electric-mode "ruby-electric")
(add-hook 'ruby-mode-hook 'ruby-electric-mode)

;; Add hook for removing the linum-mode when the shell buffer is displayed
(add-to-list 'load-path (concat dotfiles-dir "/vendor/linum"))
(global-linum-mode 1)
(setq linum-format "%d ")
;;(add-hook ‘shell-mode-hook '(lambda () (linum-mode 0)))

;; Loaded libraries to support Ruby syntax highlighting within rhtml/erb templates

;;(add-to-list 'load-path "~/.emacs.d/vendor/find-recursive")
;;(add-to-list 'load-path "~/.emacs.d/vendor/rhtml/")
;;(add-to-list 'load-path "~/.emacs.d/vendor/emacs-rails/")
;;(require 'find-recursive)
;;(require 'nxml-mode)
;;(require 'rhtml-mode)
;;(require 'rails)

(provide 'cheaproc-misc)

