;;; justin.el --- very misc
;;

(server-start)
(column-number-mode)
(prefer-coding-system 'utf-8)
(setq show-trailing-whitespace "t")
(setq ns-antialias-text "t")

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

(when (window-system) (color-theme-charcoal-black))
;;(when (not (window-system))(color-theme-something))

(provide 'justin)
;; justin.el eof