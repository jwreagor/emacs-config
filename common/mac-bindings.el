;; bindings when in a mac environment
;;;;

;; Switch window focus
(global-set-key (kbd "M-}") 'other-window)
(global-set-key (kbd "M-{") (lambda () (interactive) (other-window -1)))
(global-set-key (kbd "M-]") 'windmove-up)
(global-set-key [(super meta down)] 'windmove-down)

;; Switch buffers in current window
(global-set-key (kbd "C-M-[") 'next-buffer)
(global-set-key (kbd "C-M-]") 'previous-buffer)

;; Windows
(global-set-key [f5] 'split-window-horizontally)
(global-set-key [f6] 'split-window-vertically)
(global-set-key [f7] 'delete-window)

(provide 'mac-bindings)
