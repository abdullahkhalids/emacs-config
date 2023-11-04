;; package repositories
(require 'package)

(setq package-archives
      '(("GNU ELPA"     . "https://elpa.gnu.org/packages/")
        ("MELPA Stable" . "https://stable.melpa.org/packages/")
        ("MELPA"        . "https://melpa.org/packages/"))
      package-archive-priorities
      '(("MELPA Stable" . 0)
        ("GNU ELPA"     . 5)
        ("MELPA"        . 10)))

;; custom file dumped, never loaded
(setq custom-file "~/.emacs.d/custom-never-load.el")

;; load paths
(add-to-list 'load-path "~/Apps/emacs/")

;; load config
(load-file "~/.emacs.d/packageinstallload.el")
(load-file "~/.emacs.d/fundamentals.el")
(load-file "~/.emacs.d/lookandfeel.el")
;;(load-file "~/.emacs.d/macos.el")
(load-file "~/.emacs.d/buffers.el")
(load-file "~/.emacs.d/helpers.el")
(load-file "~/.emacs.d/website.el")
(load-file "~/.emacs.d/visualfillcolumn.el")

(load-file "~/.emacs.d/ide.el")

(load-file "~/.emacs.d/elisp.el")
(load-file "~/.emacs.d/texandpdf.el")
(load-file "~/.emacs.d/markdownmode.el")
(load-file "~/.emacs.d/orgmode.el")
(load-file "~/.emacs.d/rustmode.el")









