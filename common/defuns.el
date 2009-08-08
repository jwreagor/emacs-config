;;; function defs
;;

;;;;
;; navigation
;;

(defun scroll-one-line-up (&optional arg)
  "Scroll the selected window up (forward in the text) one line (or N lines)."
  (interactive "p")
  (scroll-up (or arg 1)))

(defun scroll-one-line-down (&optional arg)
  "Scroll the selected window down (backward in the text) one line (or N)."
  (interactive "p")
  (scroll-down (or arg 1)))

;;;;
;; native copy and paste
;;

(defvar osx-pbpaste-cmd "/usr/bin/pbpaste"
  "*command-line paste program")

(defvar osx-pbcopy-cmd "/usr/bin/pbcopy"
  "*command-line copy program")

(defun paste-from-osx ()
  "paste the contents of the os x clipboard into the buffer at point."
  (interactive)
  (call-process osx-pbpaste-cmd nil t t))

(defun copy-to-osx ()
  "copy the contents of the region into the os x clipboard."
  (interactive)
  (if (use-region-p)
      (call-process-region
       (region-beginning) (region-end) osx-pbcopy-cmd nil t t)
    (error "region not selected")))

(defun cut-to-osx ()
  "cut the contents of the region; put in os x clipboard."
  (interactive)
  (if (use-region-p)
      (call-process-region
       (region-beginning) (region-end) osx-pbcopy-cmd t t t)
    (error "region not selected")))

(defun copy-line (&optional arg)
  "Do a kill-line but copy rather than kill.  This function directly calls
    kill-line, so see documentation of kill-line for how to use it including prefix
    argument and relevant variables.  This function works by temporarily making the
    buffer read-only, so I suggest setting kill-read-only-ok to t."
  (interactive "P")
  (toggle-read-only 1)
  (kill-line arg)
  (toggle-read-only 0))

;;;;
;; nuking
;;

(defun nuke-word (arg)
  "Delete characters forward until encountering the end of a word.
    With argument, do this that many times.
    This command does not push erased text to kill-ring."
  (interactive "p")
  (delete-region
   (point)
   (progn
     (forward-word arg)
     (point))))

(defun nuke-line ()
  "Delete text from current position to end of line char."
  (interactive)
  (delete-region
   (point)
   (save-excursion
     (move-end-of-line 1)
     (point)))
  (delete-char 1))

(defun backward-nuke-word (arg)
  "Delete characters backward until encountering the beginning of a word.
    With argument, do this that many times.
    This command does not push erased text to kill-ring."
  (interactive "p")
  (nuke-word (- arg)))

(defun backward-nuke-line ()
  "Delete text between the beginning of the line to the cursor position."
  (interactive)
  (let (x1 x2)
    (setq x1 (point))
    (move-beginning-of-line 1)
    (setq x2 (point))
    (delete-region x1 x2)))

;;;;
;; formatting
;;

(defun clean-up-buffer-source ()
  (interactive)
  (indent-buffer)
  (delete-trailing-whitespace)
  (untabify-buffer))

(defun un-camelcase-string (s &optional sep start)
  "Convert CamelCase string S to lower case with word separator SEP.
    Default for SEP is an underscore \"_\".
    If third argument START is non-nil, convert words after that
    index in STRING. Might be BROKEN!!"
  (let ((case-fold-search nil))
    (while (string-match "[A-Z]" s (or start 1))
      (setq val (concat (or sep "_")
                        (downcase (match-string 0 s))))
      (setq s (replace-match val t nil s)))
    (downcase s)))

;;;;
;; network
;;

(require 'thingatpt)

(defun view-url ()
  "Open a new buffer containing the contents of URL."
  (interactive)
  (let* ((default (thing-at-point-url-at-point))
         (url (read-from-minibuffer "URL: " default)))
    (switch-to-buffer (url-retrieve-synchronously url))
    (rename-buffer url t)
    ;; TODO: switch to nxml/nxhtml mode
    (cond ((search-forward "<?xml" nil t) (xml-mode))
          ((search-forward "<html" nil t) (html-mode)))))

(defun map-coords (lat lng)
  "Show a Yahoo map marked with the point LAT by LNG."
  (interactive "BLatitude: \nBLongitude")
  (browse-url (format "http://maps.yahoo.com/maps_result?mag=12&lat=%s&lon=%s"
                      lat lng)))

;;
;; Buffers
;;

(defun ido-goto-symbol ()
  "Update the imenu index and then use ido to select a symbol to navigate to."
  (interactive)
  (imenu--make-index-alist)
  (let ((name-and-pos '())
        (symbol-names '()))
    (flet ((addsymbols (symbol-list)
                       (when (listp symbol-list)
                         (dolist (symbol symbol-list)
                           (let ((name nil) (position nil))
                             (cond
                              ((and (listp symbol) (imenu--subalist-p symbol))
                               (addsymbols symbol))

                              ((listp symbol)
                               (setq name (car symbol))
                               (setq position (cdr symbol)))

                              ((stringp symbol)
                               (setq name symbol)
                               (setq position (get-text-property 1 'org-imenu-marker symbol))))

                             (unless (or (null position) (null name))
                               (add-to-list 'symbol-names name)
                               (add-to-list 'name-and-pos (cons name position))))))))
      (addsymbols imenu--index-alist))
    (let* ((selected-symbol (ido-completing-read "Symbol? " symbol-names))
           (position (cdr (assoc selected-symbol name-and-pos))))
      (goto-char position))))

(defun my-coding-hook ()
  "Enable things that are convenient across all coding buffers."
  (set (make-local-variable 'comment-auto-fill-only-comments) t)
  (make-local-variable 'column-number-mode)
  (column-number-mode t)
  (auto-fill-mode) ;; in comments only
  (if window-system (hl-line-mode t))
  (pretty-lambdas)
  (idle-highlight))

(defun untabify-buffer ()
  (interactive)
  (untabify (point-min) (point-max)))

(defun indent-buffer ()
  (interactive)
  (indent-region (point-min) (point-max)))

(defun recentf-ido-find-file ()
  "Find a recent file using ido."
  (interactive)
  (let ((file (ido-completing-read "Choose recent file: " recentf-list nil t)))
    (when file
      (find-file file))))

;;
;; Cosmetic
;;

(defun pretty-lambdas ()
  (font-lock-add-keywords
   nil `(("(?\\(lambda\\>\\)"
          (0 (progn (compose-region (match-beginning 1) (match-end 1)
                                    ,(make-char 'greek-iso8859-7 107))
                    nil))))))

;;
;; Others
;;

(defun my-eval-and-replace ()
  "Replace the preceding sexp with its value."
  (interactive)
  (backward-kill-sexp)
  (condition-case nil
      (prin1 (eval (read (current-kill 0)))
             (current-buffer))
    (error (message "Invalid expression")
           (insert (current-kill 0)))))

(defun my-recompile-init ()
  "Byte-compile everything in ~/.emacs.d again."
  (interactive)
  (byte-recompile-directory (expand-file-name "~/.emacs.d") 0))

;; TODO: fix this
(defun sudo-edit (&optional arg)
  (interactive "p")
  (if arg
      (find-file (concat "/sudo:root@localhost:" (ido-read-file-name "File: ")))
    (find-alternate-file (concat "/sudo:root@localhost:" buffer-file-name))))

(defun lorem ()
  "Insert a paragraph of the Lorem Ipsum."
  (interactive)
  (insert "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do "
          "eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim"
          "ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut "
          "aliquip ex ea commodo consequat. Duis aute irure dolor in "
          "reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla "
          "pariatur. Excepteur sint occaecat cupidatat non proident, sunt in "
          "culpa qui officia deserunt mollit anim id est laborum."))

(defun switch-or-start (function buffer)
  "If the buffer is current, bury it, otherwise invoke the function."
  (if (equal (buffer-name (current-buffer)) buffer)
      (bury-buffer)
    (if (get-buffer buffer)
        (switch-to-buffer buffer)
      (funcall function))))


(provide 'defuns)

;;; defuns.el eof

