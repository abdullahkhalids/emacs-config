;; Install some packages
 	
(use-package tex
  :ensure auctex)

(use-package markdown-mode
  :ensure t)
  
(use-package visual-fill-column
  :ensure t)

(use-package org-ref
  :ensure t)

(use-package helm-bibtex
  :ensure t)

(use-package rust-mode
  :ensure t)

(use-package company
  :ensure t)

(use-package lsp-mode
  :ensure t
  :hook ((python-mode . lsp-deferred)
	 (rust-mode . lsp-deferred))
  :commands (lsp lsp-deferred))

(use-package lsp-ui
  :ensure t
  ;:bind ("S-TAB" . lsp-ui-doc-toggle)
  :commands lsp-ui-mode)

(use-package flycheck
  :ensure t)
