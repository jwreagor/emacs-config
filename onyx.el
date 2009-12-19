;;;; onyx.el, system specific file for onyx.local
;;

;;;;
;; w3m browser

(if (and (file-exists-p "/usr/local/share/emacs/site-lisp/w3m") (file-exists-p "/usr/local/bin/w3m"))
    (progn
      (add-to-list 'load-path "/usr/local/share/emacs/site-lisp/w3m")
      (setq w3m-command "/usr/local/bin/w3m")
      (require 'w3m-load)))

;;;;
;; erlang env

(if (file-exists-p "/usr/local/lib/erlang")
    (progn
      (setq erlang-dir "/usr/local/lib/erlang")
      (add-to-list 'load-path (concat erlang-dir "/lib/tools-2.6.1/emacs"))
      (add-to-list 'exec-path (concat erlang-dir "/bin"))))
