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

;;;;
;; color themes
;;

(require 'color-theme)
(color-theme-initialize)
;; (color-theme-djcb-dark)
;; (color-theme-starlight)
(color-theme-molokai)

;; (when (window-system)       (color-theme-starlight))
;; (when (not (window-system)) (color-theme-midnight))

;;;;
;; emacs package sources
(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
        ("marmalade" . "http://marmalade-repo.org/packages/")
        ("melpa" . "http://melpa.milkbox.net/packages/")))

;;;;
;; email settings
(setq gnus-select-method '(nnimap "gmail"
				  (nnimap-address "imap.gmail.com")
				  (nnimap-server-port 993)
				  (nnimap-stream ssl)))

(setq send-mail-function 'smtpmail-send-it
      message-send-mail-function 'smtpmail-send-it
      smtpmail-starttls-credentials '(("smtp.gmail.com" 587 "jreagor@chariotsolutions.com" nil))
      smtpmail-auth-credentials (expand-file-name "~/.authinfo")
      smtpmail-default-smtp-server "smtp.gmail.com"
      smtpmail-smtp-server "smtp.gmail.com"
      smtpmail-smtp-service 587
      smtpmail-debug-info t)
(require 'smtpmail)

(setq gnus-ignored-newsgroups "^to\\.\\|^[0-9. ]+\\( \\|$\\)\\|^[\"]\"[#'()]")

(provide 'justin)
;; justin.el eof
