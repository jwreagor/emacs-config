;;;; rust environment
;;

(autoload 'rust-mode "rust-mode" "" t)
(autoload 'cargo-minor-mode "cargo-minor-mode" "" t)

(add-hook 'rust-mode-hook
          (lambda ()
            (local-set-key (kbd "C-c <tab>") #'rust-format-buffer)))

(setq racer-cmd "~/.cargo/bin/racer")

(setq racer-rust-src-path "/Users/justinreagor/.rustup/toolchains/stable-x86_64-apple-darwin/lib/rustlib/src/rust/src")

;; (let ((home-dir (getenv "HOME")))
;;   (setq racer-rust-src-path (concat home-dir "/.cargo/emacs/rust")))

(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)
(add-hook 'racer-mode-hook #'company-mode)

(provide 'rust-env)
