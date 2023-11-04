(setq lsp-eldoc-hook nil)
(setq lsp-lens-enable nil)

(setq lsp-signature-auto-activate nil)
(setq lsp-signature-render-documentation nil)

(setq lsp-ui-doc-enable nil)
(setq lsp-ui-doc-position 'at-point)
(setq lsp-ui-doc-show-with-cursor t)
(setq lsp-ui-doc-delay 0)
(setq lsp-ui-doc-include-signature t)

(with-eval-after-load 'lsp-mode
  (local-set-key (kbd "<backtab>") #'lsp-ui-doc-toggle)
;;  (define-key lsp-command-map (kbd "C-c C-c") 'coffee-compile-file)
)

;; Company mode completions

;; disable autocompletion
(setq-default company-idle-delay nil)

;; only show tooltips, no previews or echo
(setq company-frontends '(company-pseudo-tooltip-frontend))

; keybind
(with-eval-after-load 'company
  (define-key company-mode-map (kbd "<tab>") #'company-indent-or-complete-common))

;;(defun my-company-completion-styles (capf-fn &rest args)
;;  (let ((completion-styles '(basic)))
;;    (apply capf-fn args)))
;;(advice-add 'company-capf :around #'my-company-completion-styles)






