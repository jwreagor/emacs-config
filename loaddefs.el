;;; loaddefs.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (cheat) "cheat" "elpa-to-submit/cheat.el" (18758
;;;;;;  64847))
;;; Generated autoloads from elpa-to-submit/cheat.el

(autoload 'cheat "cheat" "\
Show the specified cheat sheet.

If SILENT is non-nil then do not print any output, but return it
as a string instead.

\(fn NAME &optional SILENT)" t nil)

;;;***

;;;### (autoloads (inf-ruby inf-ruby-keys) "inf-ruby" "elpa-to-submit/inf-ruby.el"
;;;;;;  (18758 64603))
;;; Generated autoloads from elpa-to-submit/inf-ruby.el

(autoload 'inf-ruby-keys "inf-ruby" "\
Set local key defs to invoke inf-ruby from ruby-mode.

\(fn)" nil nil)

(autoload 'inf-ruby "inf-ruby" "\
Run an inferior Ruby process in a buffer.
With prefix argument, prompts for which Ruby implementation
\(from the list `inf-ruby-implementations') to use. Runs the
hooks `inf-ruby-mode-hook' (after the `comint-mode-hook' is
run).

\(fn &optional IMPL)" t nil)

(eval-after-load 'ruby-mode '(add-hook 'ruby-mode-hook 'inf-ruby-keys))

;;;***

;;;### (autoloads (pcomplete/rake) "pcmpl-rake" "elpa-to-submit/pcmpl-rake.el"
;;;;;;  (18758 64603))
;;; Generated autoloads from elpa-to-submit/pcmpl-rake.el

(autoload 'pcomplete/rake "pcmpl-rake" "\
Completion rules for the `ssh' command.

\(fn)" nil nil)

;;;***

;;;### (autoloads (ruby-mode) "ruby-mode" "elpa-to-submit/ruby-mode.el"
;;;;;;  (18763 60265))
;;; Generated autoloads from elpa-to-submit/ruby-mode.el

(autoload 'ruby-mode "ruby-mode" "\
Major mode for editing ruby scripts.
\\[ruby-indent-command] properly indents subexpressions of multi-line
class, module, def, if, while, for, do, and case statements, taking
nesting into account.

The variable ruby-indent-level controls the amount of indentation.
\\{ruby-mode-map}

\(fn)" t nil)

;;;***

;;;### (autoloads (color-theme-zenburn) "zenburn" "elpa-to-submit/zenburn.el"
;;;;;;  (18758 64603))
;;; Generated autoloads from elpa-to-submit/zenburn.el

(autoload 'color-theme-zenburn "zenburn" "\
Just some alien fruit salad to keep you in the zone.

\(fn)" t nil)

(defalias 'zenburn #'color-theme-zenburn)

;;;***

;;;### (autoloads nil nil ("cheaproc-misc.el" "elpa-to-submit/color-theme.el"
;;;;;;  "elpa-to-submit/magit.el" "elpa-to-submit/ruby-compilation.el"
;;;;;;  "init.el" "mac-bindings.el" "starter-kit-bindings.el" "starter-kit-defuns.el"
;;;;;;  "starter-kit-elpa.el" "starter-kit-eshell.el" "starter-kit-lisp.el"
;;;;;;  "starter-kit-misc.el" "starter-kit-registers.el" "starter-kit-ruby.el"
;;;;;;  "testout.el" "topfunky-misc.el") (18825 5575 905136))

;;;***

(provide 'loaddefs)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; loaddefs.el ends here
