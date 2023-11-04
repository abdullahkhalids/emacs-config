;; Buffers
;load the buffer-menu on startup
(add-hook 'emacs-startup-hook 'buffer-list-display)
(defun buffer-list-display()
  (interactive)
  (buffer-menu t))

;set up tab cycling
(global-set-key (kbd "<C-tab>") 'bury-buffer)

;bind buffer-menu to to C-x C-b instead of list-buffers
(global-set-key (kbd "C-x C-b") 'buffer-list-display)
(global-set-key (kbd "C-x C-S-B") 'buffer-menu)



