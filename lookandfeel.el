

;;;;;;;; Look and feel
;no splash screen
(put 'downcase-region 'disabled nil)
(setq inhibit-splash-screen t)

;Don't insert instructions in the *scratch* buffer
(setq initial-scratch-message nil)

;(setq inhibit-startup-echo-area-message "abdullah")

;;to set foreground color to white
(set-foreground-color "white")

;;to set background color to my choice of green
(set-background-color "#1E6B24")

;;to set border color
(set-border-color "white")

;remove the tool bar and menu bar
(menu-bar-mode -1)
(tool-bar-mode -1)
(setq use-dialog-box nil)

; enable system keyboard
;(setq x-select-enable-clipboard t)

; fonts
(set-face-attribute 'default nil :height 145)

; allow moving sentences with M-a,M-e
(setq sentence-end-double-space 'nil)


