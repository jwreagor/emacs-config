;;; justin.el --- very misc
;;

(server-start)
(column-number-mode)
(prefer-coding-system 'utf-8)
(setq show-trailing-whitespace "t")

;;
;; display time and battery life
;;

(display-time-mode)
(display-battery-mode)

;;
;; major and minor modes
;;

(require 'modes)

;;
;; w3m browser
;;

(setq w3m-command "/usr/local/bin/w3m")
(require 'w3m-load)

;;
;; color themes
;;

(require 'color-theme)
(color-theme-initialize)

(when (window-system)
  (color-theme-charcoal-black))

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

(provide 'justin)
;; justin.el eof