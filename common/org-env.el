;;; org-mode environment
;;

;; binding replacements

(add-hook 'org-mode-hook
          '(lambda ()
             (local-set-key (kbd "C-M-<return>") 'org-todo)))

(provide 'org-env)