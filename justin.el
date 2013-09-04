;;; justin.el --- very misc
;;

(server-start)

(prefer-coding-system 'utf-8)

(menu-bar-mode 0)
(display-time-mode 0)

(setq show-trailing-whitespace "t")
(setq ns-pop-up-frames nil)

;;;;
;; copy line req.
;;

(setq-default kill-read-only-ok t)

;;;;
;; major and minor modes
;;

(require 'modes)
(require 'mail)

;;;;
;; color theme
;;

(setq custom-theme-load-path (quote ()))

(add-hook 'after-init-hook
          (lambda ()
            (require 'color-theme)
            (require 'lizylee-theme)
            (color-theme-initialize)))

;;;;
;; emacs package sources

(setq package-archives '(("melpa" .
                          "http://melpa.milkbox.net/packages/")))

(provide 'justin)
;; justin.el eof
