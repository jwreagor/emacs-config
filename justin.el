;;; justin.el --- very misc
;;

(server-start)
(prefer-coding-system 'utf-8)
(setq show-trailing-whitespace "t")

;;;;
;; copy line req.
;;

(setq-default kill-read-only-ok t)

;;;;
;; display time and battery life
;;

(display-time-mode)
(display-battery-mode)

;;;;
;; major and minor modes
;;

(require 'modes)

;;;;
;; color themes
;;

(require 'color-theme)
(color-theme-initialize)

(when (window-system)
  (color-theme-github))

;;(when (not (window-system))
;;  (color-theme-something))

(provide 'justin)
;; justin.el eof