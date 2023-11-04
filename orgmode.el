;; Redefine org-mode org-align-table to respect shrink
(advice-add 'org-table-align :after #'org-table-shrink)

;;;; org-ref
; open pdfs of cite keys with 'orp
;(setq reftex-default-bibliography '("/home/abdullah/Academics/lib.bib"))

; see org-ref for use of these variables
;(setq org-ref-bibliography-notes "/home/abdullah/Academics/lib.notes")
(setq org-ref-default-bibliography "/home/abdullah/Academics/lib.bib")
(setq org-ref-pdf-directory "/home/abdullah/Academics/Pdfs/")
(setq bibtex-completion-pdf-field "file")

; open bibtex file
(setq bibtex-completion-pdf-open-function
  (lambda (fpath)
    (call-process "evince" nil 0 nil fpath)))

; change org-mode default pdf reader to evince
(eval-after-load "org"
  '(progn
     ;; Change .pdf association directly within the alist
     (setcdr (assoc "\\.pdf\\'" org-file-apps) "evince %")))

; vertical split for helm search results
(setq helm-bibtex-full-frame nil)

;; open pdf at point
(defun my/org-ref-open-pdf-at-point ()
  "Open the pdf for bibtex key under point if it exists."
  (interactive)
  (let* ((results (org-ref-get-bibtex-key-and-file))
	 (key (car results))
	 (fpath (funcall org-ref-get-pdf-filename-function key)))
    (if (file-exists-p fpath)
	(start-process "evince" "*helm-bibtex-evince*" "/usr/bin/evince" fpath)
      (message "No PDF found for %s" key))))

;open pdf with superkey+o
(global-set-key (kbd "s-o") 'my/org-ref-open-pdf-at-point)

; open helm-cite with superkey-c
(global-set-key (kbd "s-c") 'org-ref-helm-insert-cite-link)
