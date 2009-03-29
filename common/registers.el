;;; File quick access registers
;;

(dolist (r `((?i (file . ,(concat dotfiles-dir "init.el")))
             (?b (file . ,(concat dotfiles-dir "starter-kit-bindings.el")))
             (?e (file . ,"~/.zsh/env"))
             (?r (file . ,(concat dotfiles-dir "starter-kit-registers.el")))))
  (set-register (car r) (cadr r)))

(provide 'registers)
