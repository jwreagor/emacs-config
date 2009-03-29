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