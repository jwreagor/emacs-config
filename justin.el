;;; justin.el --- very misc
;;

(server-start)

(prefer-coding-system 'utf-8)

(toggle-scroll-bar 0)
(menu-bar-mode 0)
(display-time-mode 0)

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
(require 'mail)

;;;;
;; color themes
;;

(add-hook 'after-init-hook
          (lambda ()
            (require 'color-theme)
            (color-theme-initialize)
            (when (window-system) (color-theme-molokai))
            (when (not (window-system)) (color-theme-molokai))))

;;;;
;; emacs package sources
(setq package-archives '(("melpa" . "http://melpa.milkbox.net/packages/")))

(provide 'justin)
;; justin.el eof
