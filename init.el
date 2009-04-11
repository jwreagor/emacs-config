;; init.el, mah emacs booting god of doom
;;
;; (toggle-debug-on-error)

(require 'cl)
(defun handle-shift-selection (&rest args))

;;
;; Load and System pathes
;;

(setq dotfiles-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))
(setq vendor-dir (concat dotfiles-dir "vendor"))
(setq common-dir (concat dotfiles-dir "common"))
(setq elpast-dir (concat dotfiles-dir "elpa-to-submit"))

(add-to-list 'load-path dotfiles-dir)
(add-to-list 'load-path common-dir)
(add-to-list 'load-path vendor-dir)
(add-to-list 'load-path elpast-dir)

(setq erlang-dir "/usr/local/lib/erlang")
(add-to-list 'load-path (concat erlang-dir "/lib/tools-2.6.1/emacs"))
(add-to-list 'exec-path (concat erlang-dir "/bin"))

;;
;; Static loads
;;

(require 'saveplace)
(require 'ffap)
(require 'uniquify)
(require 'ansi-color)
(require 'recentf)
(require 'unbound)

(require 'lisp-helpers)
(require 'defuns)
(require 'bindings)
(require 'mac-bindings)
(require 'misc)
(require 'registers)
(require 'eshell-defaults)
(require 'ruby)

;;
;; User specific
;;

(require 'justin)

;;
;; System specific
;;

(setq system-specific-config
      (concat dotfiles-dir system-name ".el"))
(if (file-exists-p system-specific-config)
    (load system-specific-config))

;;; init.el eof
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(erc-email-userid "justin")
 '(erc-header-line-face-method nil)
 '(erc-hide-prompt t)
 '(erc-input-line-position -1)
 '(erc-join-buffer (quote bury))
 '(erc-kill-buffer-on-part t)
 '(erc-kill-queries-on-quit t)
 '(erc-kill-server-buffer-on-quit t)
 '(erc-nick "cheapRoc")
 '(erc-prompt ">")
 '(erc-user-full-name "justinwr")
 '(indent-tabs-mode nil)
 '(menu-bar-mode t)
 '(show-paren-mode t)
 '(speedbar-vc-do-check nil)
 '(standard-indent 2)
 '(tab-always-indent (quote always)))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "Grey15" :foreground "Grey" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight bold :height 120 :width normal :foundry "apple" :family "Consolas")))))
