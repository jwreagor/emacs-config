;;;; xcode environment
;;

;; (autoload 'objc-mode "objc-mode" "" t)
;; (autoload 'xcode-mode "xcode-mode" "" t)

;; (add-to-list
;;  'auto-mode-alist
;;  '("^[A-Z]\w*[a-z]\w*[A-Z]\w*(?=\b)\.[h|m]$" . objc-mode))

;; (add-to-list
;;  'auto-mode-alist
;;  '("[A-Z]\w*[a-z]\w*[A-Z]\w*(?=\b)\.[h|m]$" . xcode-mode))

;; (add-hook 'objc-mode-common-hook (require 'objc-c-mode))

;; (define-key objc-mode-map [(meta r)] 'xcode-compile)
;; (define-key objc-mode-map [(meta K)] 'xcode-clean)

;; (add-hook 'c-mode-common-hook
;;           (lambda()
;;             (local-set-key  [(meta O)] 'ff-find-other-file)))
;; (add-hook 'c-mode-common-hook
;;           (lambda()
;;             (local-set-key (kbd "C-c <right>") 'hs-show-block)
;;             (local-set-key (kbd "C-c <left>")  'hs-hide-block)
;;             (local-set-key (kbd "C-c <up>")    'hs-hide-all)
;;             (local-set-key (kbd "C-c <down>")  'hs-show-all)
;;             (hs-minor-mode t)))         ; Hide and show blocks
