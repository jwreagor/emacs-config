;;; busybee-theme.el --- port of vim's mustang theme
;; Author: martin haesler
;; URL: http://github.com/mswift42/busybee-theme
;; Version: 20130828.1844
;;; X-Original-Version: 0.1

;; original busybee theme by Patrick Anderson
;;(http://www.vim.org/scripts/script.php?script_id=2549)

;; modified for use by cheapRoc

(deftheme lizylee)

(custom-theme-set-faces
 'lizylee
 '(default ((t (:background nil :foreground "#e2e2e5"))))
 '(font-lock-builtin-face ((t (:foreground "#808080"))))
 '(region ((t (:background "#303030" :foreground "#afafff"))))
 '(highlight ((t (:background "#303030"))))
 '(fringe ((t (:background "#232323" :foreground "#cfbfad"))))
 '(hl-line ((t (:background "#393939"))))
 '(cursor ((t (:background "#626262"))))
 '(show-paren-match-face ((t (:background "#afafff"))))
 '(isearch ((t (:bold t :foreground "#202020" :background "#e2e2e5"))))
 '(modeline ((t (:bold t :foreground "#808080" :background "#3a3a3a"))))
 '(modeline-inactive ((t (:foreground "#808080" :background "#202020"))))
 '(modeline-buffer-id ((t (:bold t :foreground "#fefefe" :background "#202020"))))
 '(minibuffer-prompt ((t (:bold t :foreground "#708090"))))
 '(default-italic ((t (:italic t))))
 '(font-lock-comment-face ((t (:foreground "#606060"))))
 '(font-lock-comment-delimiter-face ((t (:foreground "#808080"))))
 '(font-lock-constant-face ((t (:foreground "#87afff"))))
 '(font-lock-doc-face ((t (:foreground "#7e8aa2"))))
 '(font-lock-function-name-face ((t (:foreground "#ffff00"))))
 '(font-lock-keyword-face ((t (:bold t :foreground "#808080"))))
 '(font-lock-preprocessor-face ((t (:foreground "#faf4c6"))))
 '(font-lock-reference-face ((t (:bold t :foreground "#808bed"))))
 '(font-lock-string-face ((t (:foreground "#87d75f"))))
 '(font-lock-type-face ((t (:foreground "#87ffff"))))
 '(font-lock-variable-name-face ((t (:foreground "#ffff5f"))))
 '(font-lock-warning-face ((t (:foreground "#ffffff" :background "#ff0000"))))
 '(link ((t (:foreground "#8787ff"))))
 '(org-hide ((t (:foreground "#708090"))))
 '(org-level-1 ((t (:bold t :foreground "#808080"))))
 '(org-level-2 ((t (:bold nil :foreground "#7e8aa2"))))
 '(org-level-3 ((t (:bold t :foreground "#e2e2e2"))))
 '(org-level-4 ((t (:bold nil :foreground "#af4f4b"))))
 '(org-date ((t (:underline t :foreground "#f0ad6d") :height 1.1)))
 '(org-footnote  ((t (:underline t :foreground "#ad600b"))))
 '(org-link ((t (:underline t :foreground "#ff9800" ))))
 '(org-special-keyword ((t (:foreground "#ff9800"))))
 '(org-verbatim ((t (:foreground "#eeeeec" :underline t :slant italic))))
 '(org-block ((t (:foreground "#7e8aa2"))))
 '(org-quote ((t (:inherit org-block :slant italic))))
 '(org-verse ((t (:inherit org-block :slant italic))))
 '(org-todo ((t (:bold t :foreground "#ffffff"))))
 '(org-done ((t (:bold t :foreground "#708090"))))
 '(org-warning ((t (:underline t :foreground "#ff0000"))))
 '(org-agenda-structure ((t (:weight bold :foreground "#df9f2d"))))
 '(org-agenda-date ((t (:foreground "#ff9800" :height 1.2))))
 '(org-agenda-date-weekend ((t (:weight normal :foreground "#808bed"))))
 '(org-agenda-date-today ((t (:weight bold :foreground "#ff9800" :height 1.4))))
 '(org-scheduled ((t (:foreground "#eeeeec"))))
 '(font-latex-bold-face ((t (:foreground "#cd8b00"))))
 '(font-latex-italic-face ((t (:foreground "#808bed" :italic t))))
 '(font-latex-string-face ((t (:foreground "#708090"))))
 '(font-latex-match-reference-keywords ((t (:foreground "#708090"))))
 '(font-latex-match-variable-keywords ((t (:foreground "#708090"))))
 '(ido-only-match ((t (:foreground "#ff9800"))))
 '(org-sexp-date ((t (:foreground "#808080"))))
 '(ido-first-match ((t (:foreground "#b1d631"))))
 '(gnus-header-content ((t (:foreground "#ff9810"))))
 '(gnus-header-from ((t (:foreground "#f0e16a"))))
 '(gnus-header-name ((t (:foreground "#ff9800"))))
 '(gnus-header-subject ((t (:foreground "#ff8800"))))
 '(slime-repl-inputed-output-face ((t (:foreground "#ff9800"))))
 '(enh-ruby-op-face ((t (:bold t :foreground "#A0A0A0")))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'lizylee)

;;; busybee-theme.el ends here
