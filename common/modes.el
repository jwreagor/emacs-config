;;;; modes --- minor and major mode loading
;;

;;;;
;; major - autoloads
;;

(if (boundp 'erlang-tools)
    (progn
      (autoload 'erlang-mode "erlang" "" t)
      (autoload 'elixir-mode "elixir-mode" "" t)
      (add-to-list 'auto-mode-alist '("\\.erl$" . erlang-mode))
      (add-to-list 'auto-mode-alist  '("\\.exs?$" . elixir-mode))))

(add-to-list 'auto-mode-alist '("COMMIT_EDITMSG$" . diff-mode))

(autoload 'markdown-mode "markdown-mode.el" "" t)
(add-to-list 'auto-mode-alist '("\\.markdown$" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md$" . markdown-mode))

(autoload 'feature-mode "feature-mode" "" t)
(add-to-list 'auto-mode-alist '("\\.feature$" . feature-mode))

(autoload 'yaml-mode "yaml-mode" "" t)
(add-to-list 'auto-mode-alist '("\\.ya?ml$" . yaml-mode))

(autoload 'js-mode "js" "" t)
(add-to-list 'auto-mode-alist '("\\.js$" . js-mode))
(add-to-list 'auto-mode-alist '("\\.json5?$" . js-mode))

(add-to-list 'auto-mode-alist '("\\.m$" . objc-mode))
(add-to-list 'auto-mode-alist '("\\.h$" . objc-mode))

(autoload 'haml-mode "haml-mode" "" t)
(add-to-list 'auto-mode-alist '("\\.haml$" . haml-mode))

(autoload 'sass-mode "sass-mode" "" t)
(add-to-list 'auto-mode-alist '("\\.sass$" . sass-mode))
(add-to-list 'auto-mode-alist '("\\.scss$" . sass-mode))

(autoload 'sws-mode "sws-mode" "" t)
(autoload 'jade-mode "jade-mode" "" t)
(add-to-list 'auto-mode-alist '("\\.styl$" . sws-mode))
(add-to-list 'auto-mode-alist '("\\.jade$" . jade-mode))
(add-to-list 'auto-mode-alist '("\\.css$" . css-mode))

(autoload 'handlebars-mode "handlebars-mode")
(add-to-list 'auto-mode-alist '("\\.(hbs|handlebars)$" . handlebars-mode))

(autoload 'coffee-mode "coffee-mode")
(add-to-list 'auto-mode-alist '("\\.coffee\..*$" . coffee-mode))
(add-to-list 'auto-mode-alist '("Cakefile" . coffee-mode))

;;(autoload 'cheat "cheat" "" t)
(autoload 'lisppaste-paste-region "lisppaste" "" t)

(autoload 'makefile-mode "makefile-mode")
(add-to-list 'auto-mode-alist '("Makefile\.?.*$" . makefile-mode))

(autoload 'treetop-mode "treetop-mode")
(add-to-list 'auto-mode-alist '("\\.tt$" . treetop-mode))

(autoload 'paredit-mode "paredit"
  "Minor mode for pseudo-structurally editing Lisp code." t)

(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)
(add-hook 'eshell-mode-hook 'ansi-color-for-comint-mode-on)

(add-hook 'sql-mode-hook 'sqlup-mode)

;;
;; go-mode
;;

(add-hook 'after-init-hook
          #'(lambda ()
              (require 'company)
              (require 'company-go)
              (require 'lsp-mode)

              (setq company-tooltip-limit 20)
              (setq company-idle-delay .3)
              (setq company-echo-delay 0)
              (setq company-begin-commands '(self-insert-command))
              (setq lsp-enable-snippet 'f)
              ;; (setq gofmt-command "goimports")

              ))

(add-hook 'after-init-hook
          #'(lambda ()
              (add-hook 'before-save-hook 'gofmt-before-save)
              (add-hook 'go-mode-hook 'go-eldoc-setup)
              ;; (add-hook 'go-mode-hook #'lsp)
              (add-hook 'go-mode-hook
                        #'(lambda ()
                            (set (make-local-variable 'company-backends) '(company-go))
                            (company-mode)
                            (linum-mode)

                            ;; (require go-autocomplete)

                            (setq lsp-keymap-prefix "C-c l")
                            (setq lsp-headerline-breadcrumb-enable nil)
                            (setq lsp-diagnostics-provider :none)

                            (lsp)

                            (lsp-enable-which-key-integration t)

                            ;; (define-key go-mode-map (kbd "C-c C-j") 'go-guru-definition)
                            ;; (define-key go-mode-map (kbd "M-RET") 'go-playground-exec)

                            ))))

;;
;; ws-trim setup
;;
(add-hook 'after-init-hook
          #'(lambda ()
              (global-ws-trim-mode t)
              (set-default 'ws-trim-level 2)
              (setq ws-trim-global-modes '(guess (not message-mode eshell-mode)))))

;;
;; cosmetics for diffs and magit
;;

(eval-after-load 'diff-mode
  '(progn
     (set-face-foreground 'diff-added "green4")
     (set-face-foreground 'diff-removed "red3")))

(eval-after-load 'magit
  '(progn
     (set-face-foreground 'magit-diff-add "green3")
     (set-face-foreground 'magit-diff-del "red3")))

;;
;; coffee-script
;;

(add-hook 'coffee-mode-hook
          #'(lambda ()
              (set (make-local-variable 'tab-width) 2)))

;;
;; python
;;
(add-hook 'after-init-hook
          #'(lambda ()
              ;; (setq elpy-rpc-virtualenv-path "/usr/local/bin/pyvenv")
              ;;(elpy-enable)
              (require 'virtualenvwrapper)
              (venv-initialize-interactive-shells) ;; if you want interactive shell support
              (venv-initialize-eshell) ;; if you want eshell support
              ;; note that setting `venv-location` is not necessary if you
              ;; use the default location (`~/.virtualenvs`), or if the
              ;; the environment variable `WORKON_HOME` points to the right place
              ;; (setq venv-location "~/.virtualenvs")
              ))

(add-hook 'python-mode-hook
          #'(lambda ()
              (linum-mode)
              (company-mode)
              (define-key python-mode-map (kbd "C-c C-c") 'comment-region)
              (define-key python-mode-map (kbd "C-c C-v") 'uncomment-region)))

;;
;; markdown
;;

(setq markdown-mode-hook
      #'(lambda ()
          (defun markdown-preview-file ()
            "open the current buffer in Marked 2"
            (interactive)
            (start-process-shell-command "markdown-preview-file" nil
                                         (format "open -a \"/Applications/Marked\  2.app\" \"%s\""
                                                 (shell-quote-argument (buffer-file-name)))))
          (global-set-key "\C-c m" 'markdown-preview-file)))

;;
;; fucking batch files
;;

(add-hook 'sh-mode-hook
          #'(lambda ()
              (interactive)
              (define-key sh-mode-map (kbd "C-c C-c") 'comment-region)
              (setq sh-basic-offset 4
                    sh-indentation 4)))

;;
;; ack-and-a-half
;;

(defalias 'ack                'ack-and-a-half)
(defalias 'ack-same           'ack-and-a-half-same)
(defalias 'ack-find-file      'ack-and-a-half-find-file)
(defalias 'ack-find-file-same 'ack-and-a-half-find-file-same)

;;
;; ibuffer
;;

;; (message (split-string (buffer-file-name) (path-separator)))

(require 'ibuffer)

(setq ibuffer-saved-filter-groups
      '(("defaults"
         ("conf" (or (filename . "\.emacs\.d")
                     (filename . "emacs-config")))
         ("org" (or (mode . org-mode)
                    (filename . "OrgMode")))
         ("irc" (mode . erc-mode))
         ("emacs" (or (name . "^\\*scratch\\*$")
                      (name . "^\\*Messages\\*$")))
         ("db" (or (name . "\\*SQL\\*")
                   (filename . "\*sql\*")))
     ("help" (or (name . "\*Help\*")
             (name . "\*Apropos\*")
             (name . "\*info\*"))))))

(add-hook 'ibuffer-mode-hook
          #'(lambda ()
              (ibuffer-auto-mode 1)
              (setq ibuffer-expert 1)
              (setq ibuffer-show-empty-filter-groups nil)
              (ibuffer-switch-to-saved-filter-groups "defaults")))

;; (add-hook 'after-init-hook
;;           #'(lambda ()
;;              ;; (require 'yasnippet)
;;              ;; (yas-load-directory (concat dotfiles-dir "snippets"))
;;              (yas-global-mode)
;;              (global-company-mode)
;;              (editorconfig-mode)))

;;(hl-line-mode)

(provide 'modes)
;;; modes.el eof
