;;;; tiny-onyx.el, system specific config for tiny-onyx.local
;;

;;;;
;; erlang env

(if (file-exists-p "/opt/local/lib/erlang")
    (progn
      (setq erlang-dir "/opt/local/lib/erlang")
      (add-to-list 'load-path (concat erlang-dir "/lib/tools-2.6.5/emacs"))
      (add-to-list 'exec-path (concat erlang-dir "/bin"))
      (require 'erlang-start)))
