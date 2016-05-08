;;; org-mode environment
;;

;; binding replacements
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(add-hook 'org-mode-hook 'turn-on-font-lock) ; not needed when global-font-lock-mode is on
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

(add-hook 'org-mode-hook
          '(lambda ()
             (local-set-key (kbd "C-M-<return>") 'org-todo)))

(setq org-todo-keywords
      '((sequence "TODO(t)" "|" "DONE(d)")
        (sequence "PLAN(p)" "REVIEW(v)" "LOOK(l)" "|" "VIEWED(i)")
        (sequence "REPORT(r)" "BUG(b)" "KNOWNCAUSE(k)" "|" "FIXED(f)" "WORKING(w)")
        (sequence "APPROVE(a)" "|" "GOOD(g)")
        (sequence "|" "CANCELED(c)")))

(provide 'org-env)
