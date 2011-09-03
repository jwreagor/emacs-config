;;; justin.el --- very misc
;;

(server-start)

(prefer-coding-system 'utf-8)

(toggle-scroll-bar -1)
(menu-bar-mode -1)

(setq show-trailing-whitespace "t")
(setq ns-pop-up-frames nil)

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
(color-theme-github)

;; (when (window-system)       (color-theme-starlight))
;; (when (not (window-system)) (color-theme-midnight))

;;;;
;; marmalade for packages
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))

(provide 'justin)
;; justin.el eof
