;; kill-buffer-diff
(defadvice kill-buffer (around my-kill-buffer-check activate)
  "Prompt when a buffer is about to be killed."
  (let* ((buffer-file-name (buffer-file-name))
         backup-file)
    ;; see 'backup-buffer
    (if (and (buffer-modified-p)
             buffer-file-name
             (file-exists-p buffer-file-name)
             (setq backup-file (car (find-backup-file-name buffer-file-name))))
        (let ((answer (completing-read (format "Buffer modified %s, (d)iff, (s)ave, (k)ill? " (buffer-name))
                                       '("d" "s" "k") nil t)))
          (cond ((equal answer "d")
                 (set-buffer-modified-p nil)
                 (let ((orig-buffer (current-buffer))
                       (file-to-diff (if (file-newer-than-file-p buffer-file-name backup-file)
                                         buffer-file-name
                                       backup-file)))
                   (set-buffer (get-buffer-create (format "%s last-revision" (file-name-nondirectory file-to-diff))))
                   (buffer-disable-undo)
                   (insert-file-contents file-to-diff nil nil nil t)
                   (set-buffer-modified-p nil)
                   (setq buffer-read-only t)
                   (ediff-buffers (current-buffer) orig-buffer)))
                ((equal answer "k")
                 (set-buffer-modified-p nil)
                 ad-do-it)
                (t
                 (save-buffer)
                 ad-do-it)))
      ad-do-it)))

