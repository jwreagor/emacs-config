;;; git-gutter-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (global-git-gutter-mode git-gutter-mode git-gutter:toggle
;;;;;;  git-gutter:clear git-gutter git-gutter:previous-diff git-gutter:next-diff
;;;;;;  git-gutter:popup-diff) "git-gutter" "git-gutter.el" (20787
;;;;;;  63353))
;;; Generated autoloads from git-gutter.el

(autoload 'git-gutter:popup-diff "git-gutter" "\


\(fn)" t nil)

(autoload 'git-gutter:next-diff "git-gutter" "\


\(fn ARG)" t nil)

(autoload 'git-gutter:previous-diff "git-gutter" "\


\(fn ARG)" t nil)

(autoload 'git-gutter "git-gutter" "\


\(fn)" t nil)

(autoload 'git-gutter:clear "git-gutter" "\


\(fn)" t nil)

(autoload 'git-gutter:toggle "git-gutter" "\


\(fn)" t nil)

(autoload 'git-gutter-mode "git-gutter" "\
Toggle Git-Gutter mode on or off.
Interactively, with no prefix argument, toggle the mode.
With universal prefix ARG turn mode on.
With zero or negative ARG turn mode off.
\\{git-gutter-mode-map}

\(fn &optional ARG)" t nil)

(defvar global-git-gutter-mode nil "\
Non-nil if Global-Git-Gutter mode is enabled.
See the command `global-git-gutter-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-git-gutter-mode'.")

(custom-autoload 'global-git-gutter-mode "git-gutter" nil)

(autoload 'global-git-gutter-mode "git-gutter" "\
Toggle Git-Gutter mode in every possible buffer.
With prefix ARG, turn Global-Git-Gutter mode on if and only if
ARG is positive.
Git-Gutter mode is enabled in all buffers where
`(lambda nil (when (and (not (minibufferp)) (buffer-file-name)) (git-gutter-mode 1)))' would do it.
See `git-gutter-mode' for more information on Git-Gutter mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil nil ("git-gutter-pkg.el") (20787 63353 263947))

;;;***

(provide 'git-gutter-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; git-gutter-autoloads.el ends here
