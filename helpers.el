;; Screenshot
(defun paste-screenshot ()
  "Take a screenshot into a time stamped unique-named file in the
sub-directory (%filenameIMG) as the org-buffer and insert a link to this file."
  (interactive)
  
  (setq foldername "img/")
  (if (not (file-exists-p foldername))
      (mkdir foldername))
  
  (setq imgName (concat "img_" (format-time-string "%Y_%m_%d_%H_%M_%S") ".png"))
  (setq imgPath (concat "img/" imgName))
  
  ;;(shell-command (concat "xclip -selection clipboard -target image/png -out >" imgPath))
  (shell-command (concat "pngpaste " imgPath))
  
  (if (string-equal major-mode "latex-mode")
    (insert (concat
	     "\\begin{center}
  \\includegraphics[width=0.8\\textwidth]{" imgPath "}
\\end{center}")))

  (if (string-equal major-mode "markdown-mode")
    (insert (concat
	     "![img](" imgPath ")")))

  )


;The following two functions taken from
; https://sites.google.com/site/steveyegge2/my-dot-emacs-file
(defun rename-file-and-buffer (new-name)
 "Renames both current buffer and file it's visiting to NEW-NAME."
 (interactive "sNew name: ")
 (let ((name (buffer-name))
       (filename (buffer-file-name)))
   (if (not filename)
       (message "Buffer '%s' is not visiting a file!" name)
     (if (get-buffer new-name)
	 (message "A buffer named '%s' already exists!" new-name)
       (progn
	 (rename-file name new-name 1)
	 (rename-buffer new-name)
	 (set-visited-file-name new-name)
	 (set-buffer-modified-p nil))))))

(defun move-buffer-file (dir)
  "Moves both current buffer and file it's visiting to DIR."
  (interactive "DNew directory: ")
  (let* ((name (buffer-name))
	 (filename (buffer-file-name))
	 (dir
	  (if (string-match dir "\\(?:/\\|\\\\)$")
	      (substring dir 0 -1) dir))
	 (newname (concat dir "/" name)))
    (if (not filename)
	(message "Buffer '%s' is not visiting a file!" name)
      (progn
	(copy-file filename newname 1) 	
	(delete-file filename) 	
	(set-visited-file-name newname) 
	(set-buffer-modified-p nil) 	
	t)))) 
