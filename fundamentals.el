;;;;;;; Fundamentals
; start as server
; start emacsclient
(server-start)
; set up session restore
(desktop-save-mode t)

; no backups
(setq backup-inhibited t)
;no auto-saves
(setq auto-save-default 'nil)

;disable C-z
(global-unset-key "\C-z")
