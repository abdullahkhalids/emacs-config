;; pelican page & article
(defvar pelican-page-location "/home/abdullah/Projects/Website/abdullahkhalid/content/pages/")
(defun pelican-page ()
  "Make a today's date name.md file"
  (interactive)
  (find-file (concat pelican-page-location (format-time-string "%Y-%m-%d " (current-time)) (read-string "Title: ") ".md"))
  )

(defvar pelican-article-location "/home/abdullah/Projects/Website/abdullahkhalid/content/articles/")
(defun pelican-article ()
  "Make a today's date name.md file"
  (interactive)
  (find-file (concat pelican-article-location (format-time-string "%Y-%m-%d " (current-time)) (read-string "Title: ") ".md"))
  )
