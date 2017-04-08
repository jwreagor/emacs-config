;;;;
;; Setup Erlang dev env
;;
;; NOTE: ripped from my init.el, should be added back at some point
;;

;; (setq erlang-dir (or (getenv "ERLANG_PATH") "/usr/local/opt/erlang"))

;; (if (and (boundp 'local-bin) (file-exists-p erlang-dir))
;;     (progn
;;       (setq erlang-bin (concat erlang-dir "/bin"))
;;       (setq erlang-tools (car (file-expand-wildcards
;;                           (concat erlang-dir "/lib/erlang/lib/tools-*/emacs"))))))

;; (if (file-exists-p erlang-dir)
;;     (add-to-list 'load-path erlang-tools))
