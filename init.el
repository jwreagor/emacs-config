;; init.el, mah emacs booting god of doom
;;

;;
;; Load and System pathes
;;

(setq dotfiles-dir (file-name-directory (or (buffer-file-name) load-file-name))
      system-specific-config (concat dotfiles-dir system-name ".el")
      user-specific-config (concat dotfiles-dir user-login-name ".el")
      vendor-dir (concat dotfiles-dir "vendor")
      common-dir (concat dotfiles-dir "common")
      elpa-dir (concat dotfiles-dir "elpa")
      elpa-lib-dir (concat dotfiles-dir "elpa-to-submit")
      erlang-dir "/usr/local/lib/erlang")

(add-to-list 'load-path dotfiles-dir)
(add-to-list 'load-path common-dir)
(add-to-list 'load-path vendor-dir)
(add-to-list 'load-path elpa-dir)
(add-to-list 'load-path elpa-lib-dir)
(add-to-list 'load-path (concat erlang-dir "/lib/tools-2.6.1/emacs"))
(add-to-list 'load-path "/usr/local/share/emacs/site-lisp/w3m")
(add-to-list 'load-path (concat vendor-dir "/color-theme"))
(add-to-list 'load-path (concat vendor-dir "/yasnippet.el"))
(add-to-list 'load-path (concat vendor-dir "/textmate.el"))
(add-to-list 'exec-path (concat erlang-dir "/bin"))

;;
;; Package management (might remove again later)
;;

(require 'package)
(package-initialize)

;;
;; Static loads
;;

(require 'cl)
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

;;
;; System specific
;;
      
(if (file-exists-p system-specific-config)
    (load system-specific-config))

;;
;; User specific
;;

(if (file-exists-p user-specific-config)
    (load user-specific-config))

;;
;; Custom settings
;;

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

;;(toggle-debug-on-error)
;;(defun handle-shift-selection (&rest args))

(provide 'init)
;;; init.el eof