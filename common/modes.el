;;; Mode setups
;;

;;
;; Minor
;;

(add-to-list 'load-path (concat vendor-dir "/yasnippet.el"))
(require 'yasnippet)
(yas/initialize)
(yas/load-directory (concat dotfiles-dir "/snippets"))

(add-to-list 'load-path (concat vendor-dir "/textmate.el"))
(require 'textmate)
(textmate-mode)

;;
;; Major
;;

(require 'erlang-start)
(autoload 'erlang-mode "erlang.el" "" t)
(add-to-list 'auto-mode-alist '("\\.erl$" . erlang-mode))

(add-to-list 'auto-mode-alist '("COMMIT_EDITMSG$" . diff-mode))

(autoload 'markdown-mode "markdown-mode.el" "" t)
(add-to-list 'auto-mode-alist '("\\.m[d|arkdown]\\'" . markdown-mode))

(autoload 'haml-mode "haml-mode" "" t)
(add-to-list 'auto-mode-alist '("\\.haml$" . haml-mode))

(autoload 'sass-mode "sass-mode" "" t)
(add-to-list 'auto-mode-alist '("\\.sass$" . sass-mode))

(autoload 'yaml-mode "yaml-mode" "" t)
(add-to-list 'auto-mode-alist '("\\.ya?ml$" . yaml-mode))

(autoload 'js2-mode "js2" "" t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(add-to-list 'auto-mode-alist '("\\.j$" . objc-mode))

(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)
(add-hook 'eshell-mode-hook 'ansi-color-for-comint-mode-on)

(autoload 'cheat "cheat" "" t)
(autoload 'lisppaste-paste-region "lisppaste" "" t)
(autoload 'magit-status "magit" "" t)

(provide 'modes)

;;; modes.el eof
