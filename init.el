;;;; init.el, mah emacs booting god of doom
;;

;;;;
;; system locations
;;

(setq dotfiles-dir (file-name-directory (or (buffer-file-name) load-file-name))
      system-specific-config (concat dotfiles-dir system-name ".el")
      user-specific-config (concat dotfiles-dir user-login-name ".el")
      vendor-dir (concat dotfiles-dir "vendor")
      common-dir (concat dotfiles-dir "common")
      themes-dir (concat dotfiles-dir "themes")
      erlang-dir (or (getenv "ERLANG_PATH") "/usr/local/opt/erlang"))

(if (file-exists-p "/usr/local/bin")
    (setq local-bin "/usr/local/bin"))

(if (file-exists-p erlang-dir)
    (progn
      (setq erlang-bin (concat erlang-dir "/bin"))
      (setq erlang-tools (car (file-expand-wildcards
                          (concat erlang-dir "/lib/erlang/lib/tools-*/emacs"))))))

;;;;
;; build load/exec-path
;;

(add-to-list 'load-path dotfiles-dir)
(add-to-list 'load-path common-dir)
(add-to-list 'load-path vendor-dir)
(add-to-list 'load-path themes-dir)
(add-to-list 'load-path erlang-tools)
(add-to-list 'load-path (concat vendor-dir "/rainbow-mode"))
(add-to-list 'load-path (concat vendor-dir "/cucumber.el"))
(add-to-list 'load-path (concat vendor-dir "/cucumber.el/cucumber.el"))
(add-to-list 'load-path (concat vendor-dir "/textmate.el"))
(add-to-list 'load-path (concat vendor-dir "/treetop-mode.el"))
(add-to-list 'load-path (concat vendor-dir "/scala"))
(add-to-list 'load-path (concat vendor-dir "/jade-mode"))
(add-to-list 'load-path (concat vendor-dir "/nu-mode"))

;;;;
;; build exec-path
;;

(if (boundp 'local-bin)
    (add-to-list 'exec-path local-bin))

(if (boundp 'mysql-bin)
    (add-to-list 'exec-path mysql-bin))

(if (boundp 'erlang-bin)
    (add-to-list 'exec-path erlang-bin))

;;;;
;; static loads
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
;; (require 'misc)
(require 'registers)
(require 'eshell-defaults)

(require 'lisp-env)
(require 'scheme-env)
(require 'org-env)
(require 'js-env)

(add-hook 'after-init-hook
          '(lambda ()
             (require 'ruby-env)))

;;;;
;; user/system specific
;;

(if (file-exists-p system-specific-config)
    (load system-specific-config))

(if (file-exists-p user-specific-config)
    (load user-specific-config))

;;;;
;; customize settings
;;

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-save-default nil)
 '(blink-cursor-mode t)
 '(coffee-tab-width 2)
 '(column-number-mode t)
 '(dired-at-point-require-prefix nil)
 '(erc-autojoin-mode t)
 '(erc-button-mode t)
 '(erc-email-userid "justin")
 '(erc-fill-mode t)
 '(erc-header-line-face-method nil)
 '(erc-hide-prompt t)
 '(erc-input-line-position -1)
 '(erc-irccontrols-mode t)
 '(erc-join-buffer (quote bury))
 '(erc-kill-buffer-on-part t)
 '(erc-kill-queries-on-quit t)
 '(erc-kill-server-buffer-on-quit t)
 '(erc-list-mode t)
 '(erc-match-mode t)
 '(erc-menu-mode t)
 '(erc-move-to-prompt-mode t)
 '(erc-netsplit-mode t)
 '(erc-networks-mode t)
 '(erc-nick "cheapRoc")
 '(erc-noncommands-mode t)
 '(erc-pcomplete-mode t)
 '(erc-prompt ">")
 '(erc-readonly-mode t)
 '(erc-ring-mode t)
 '(erc-stamp-mode t)
 '(erc-track-minor-mode t)
 '(erc-track-mode t)
 '(erc-user-full-name "Justin Reagor")
 '(eshell-kill-on-exit t)
 '(eshell-scroll-to-bottom-on-input nil)
 '(eshell-term-name "screen-256color")
 '(eshell-visual-commands (quote ("tail" "ssh" "vi" "screen" "top" "less" "more" "lynx" "ncftp" "pine" "tin" "trn" "elm")))
 '(ffap-dired-wildcards "[*?][^/]*\\'")
 '(file-name-at-point-functions nil)
 '(fringe-mode 0 nil (fringe))
 '(ido-create-new-buffer (quote always))
 '(ido-enable-flex-matching t)
 '(ido-max-prospects 10)
 '(ido-mode (quote both) nil (ido))
 '(ido-use-filename-at-point nil)
 '(indent-tabs-mode nil)
 '(js-indent-level 2)
 '(js2-missing-semi-one-line-override t)
 '(js2-strict-missing-semi-warning nil)
 '(line-spacing 1)
 '(longlines-auto-wrap nil)
 '(ns-alternate-modifier (quote meta))
 '(ns-antialias-text t)
 '(ns-command-modifier (quote super))
 '(ns-control-modifier (quote control))
 '(ns-function-modifier (quote none))
 '(ns-use-qd-smoothing nil)
 '(rust-indent-offset 2)
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(speedbar-vc-do-check nil)
 '(standard-indent 2)
 '(tab-always-indent (quote always))
 '(tab-width 4)
 '(truncate-lines nil)
 '(truncate-partial-width-windows nil)
 '(yas/prompt-functions (quote (yas/ido-prompt yas/completing-prompt yas/x-prompt yas/dropdown-prompt yas/no-prompt))))

(provide 'init)
;;; init.el eof

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(bg:erc-color-face5 ((t (:background "red"))))
 '(erc-input-face ((t (:foreground "color-250"))))
 '(erc-my-nick-face ((t (:foreground "color-33" :weight bold))))
 '(rainbow-delimiters-depth-1-face ((((background dark)) (:foreground "#a145dc"))))
 '(rainbow-delimiters-depth-2-face ((((background dark)) (:foreground "#5445dc"))))
 '(rainbow-delimiters-depth-3-face ((((background dark)) (:foreground "#458adc"))))
 '(rainbow-delimiters-depth-4-face ((((background dark)) (:foreground "#45cedc"))))
 '(rainbow-delimiters-depth-5-face ((((background dark)) (:foreground "#53de46"))))
 '(rainbow-delimiters-depth-6-face ((((background dark)) (:foreground "#ccf04b"))))
 '(rainbow-delimiters-depth-7-face ((((background dark)) (:foreground "#ffd850"))))
 '(rainbow-delimiters-depth-8-face ((((background dark)) (:foreground "#ff8e50"))))
 '(rainbow-delimiters-depth-9-face ((((background dark)) (:foreground "#fb4f56"))))
 '(trailing-whitespace ((t nil)))
 '(twitter-time-stamp-face ((t (:background "lightBlue" :foreground "Black" :slant italic))))
 '(twitter-user-name-face ((t (:background "lightBlue" :foreground "black" :weight bold)))))
