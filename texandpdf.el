
;; TeX options

(setq TeX-auto-save t)
(setq TeX-parse-self t)

(setq TeX-view-program-list
      '(("atril" "/usr/bin/atril %o")))

(with-eval-after-load 'tex
  (setq TeX-source-correlate-method 'synctex)
  (TeX-source-correlate-mode)
  (setq TeX-source-correlate-start-server t)
  (add-to-list 'TeX-view-program-selection
               '(output-pdf "atril")))

;; remove to get auctex to stop asking for master file
;; (setq-default TeX-master nil)

;; Reftex

;; Make reftex use eqref
(setq reftex-label-alist '(AMSTeX))

;; Stop reftex from asking reference style
(setq reftex-ref-macro-prompt nil)



;; Pdf options
;Update pdf on the fly
;(add-hook 'doc-view-mode-hook 'auto-revert-mode)

;scroll pdf continously
(setq doc-view-continuous t)

;resolution
(setq doc-view-resolution 300)

; make pdfs bigger
(setq doc-view-image-width 900)
