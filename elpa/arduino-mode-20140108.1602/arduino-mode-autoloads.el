;;; arduino-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (arduino-mode) "arduino-mode" "arduino-mode.el"
;;;;;;  (21445 57509 0 0))
;;; Generated autoloads from arduino-mode.el

(add-to-list 'auto-mode-alist '("\\.pde\\'" . arduino-mode))

(add-to-list 'auto-mode-alist '("\\.ino\\'" . arduino-mode))

(autoload 'arduino-mode "arduino-mode" "\
Major mode for editing Arduino code.

The hook `c-mode-common-hook' is run with no args at mode
initialization, then `arduino-mode-hook'.

Key bindings:
\\{arduino-mode-map}

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("arduino-mode-pkg.el") (21445 57509 289626
;;;;;;  0))

;;;***

(provide 'arduino-mode-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; arduino-mode-autoloads.el ends here
