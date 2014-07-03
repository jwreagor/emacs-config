;;; justin.el --- very misc
;;

(server-start)
(prefer-coding-system 'utf-8)

(menu-bar-mode -1)
(display-time-mode 0)
(desktop-save-mode 1)
(auto-compression-mode t)
(recentf-mode 1)
(show-paren-mode 1)
(random t) ;; RNG seed
(defalias 'yes-or-no-p 'y-or-n-p)

(set-default 'indent-tabs-mode nil)
(setq-default fill-column 80
              kill-read-only-ok t)

(setq visible-bell t
      font-lock-maximum-decoration t
      inhibit-startup-message t
      transient-mark-mode t
      color-theme-is-global t
      save-place t
      imenu-auto-rescan t
      truncate-partial-width-windows nil
      uniquify-buffer-name-style 'forward
      ediff-window-setup-function 'ediff-setup-windows-plain
      save-place-file (convert-standard-filename "~/.emacs.d/places")
      show-trailing-whitespace "t"
      ns-pop-up-frames nil)

;;
;; ido
;;
(when (> emacs-major-version 21)
  (ido-mode t)
  (setq ido-enable-prefix nil
        ido-enable-flex-matching t
        ido-create-new-buffer 'always
        ido-use-filename-at-point t
        ido-max-prospects 10))

;;
;; copy line req.
;;

;;
;; hippie expand
;;
(delete 'try-expand-line hippie-expand-try-functions-list)
(delete 'try-expand-list hippie-expand-try-functions-list)

;;
;; backup buffers
;;
(setq backup-directory-alist `(("." . ,(expand-file-name "~/.emacs.d/backups")))
      auto-save-default nil)

;;
;; nxhtml stuff
;;
(setq mumamo-chunk-coloring 'submode-colored
      nxhtml-skip-welcome t
      indent-region-mode t
      rng-nxml-auto-validate-flag nil)

;;;;
;; major and minor modes
;;

(require 'modes)
(require 'mail)

;;;;
;; color theme
;;

(add-to-list 'custom-theme-load-path themes-dir)

(add-hook 'after-init-hook
          (lambda ()
            (require 'color-theme)
            (require 'lizydee-theme)
            (color-theme-initialize)
            (color-theme-lizydee)))

;;;;
;; emacs package sources

(setq package-archives '(("melpa" . "http://melpa.milkbox.net/packages/")))

(provide 'justin)
;; justin.el eof
