;;; helm setup
;;
(require 'helm-config)

(global-set-key (kbd "C-x b")   'helm-buffers-list)
(global-set-key (kbd "C-x m")   'helm-M-x)
(global-set-key (kbd "M-y")     'helm-show-kill-ring)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x f")   'helm-recentf)
(global-set-key (kbd "C-x p")   'helm-ag-project-root)
(global-set-key (kbd "C-x h")   'helm-descbinds)

;; provides tab with default helm action
(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action-1)
;; fixes helm tab under terminal
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action)


(provide 'helm-env)
