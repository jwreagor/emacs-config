;;; justin.el --- very misc
;;

(column-number-mode)
(prefer-coding-system 'utf-8)
(server-start)
(setq show-trailing-whitespace "t")

;;
;; Display time and battery life
;;

(display-time-mode)
(display-battery-mode)

;;
;; Major and Minor modes
;;

(require 'modes)

;;
;; w3m Web Browser
;;

(add-to-list 'load-path "/usr/local/share/emacs/site-lisp/w3m")
(require 'w3m-load)

;;
;; Color Theme
;;

(add-to-list 'load-path (concat vendor-dir "/color-theme"))
(require 'color-theme)
(color-theme-initialize)

(when (window-system)
  (color-theme-charcoal-black))
;; (color-theme-tango-2))
;; (color-theme-github))
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

(provide 'justin)
