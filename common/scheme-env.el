;;;; scheme environment
;;

;; for chicken scheme

(setq scheme-program-name "csi -:c")

;; hooks

(add-hook 'scheme-mode-hook (lambda ()
                              (paredit-mode +1)
                              (rainbow-delimiters-mode)))

(provide 'scheme-env)
