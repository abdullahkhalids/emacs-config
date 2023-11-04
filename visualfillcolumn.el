

; set default fill column
(setq fill-column 90)
(setq-default visual-fill-column-width 90)

; enable it where ever visual line mode is enabled
(add-hook 'visual-line-mode-hook #'visual-fill-column-mode)

;; make sure splitting is not affected by this mode
(setq-default visual-fill-column-enable-sensible-window-split t)

;; put the black line at end of column
(setq-default visual-fill-column-fringes-outside-margins nil)
