
;; enable visual-line-mdoe
(add-hook 'markdown-mode-hook 'turn-on-visual-line-mode)

;;enable math syntax highlighting
(setq markdown-enable-math t)

;;markdown renderer
(setq markdown-command "pandoc --mathjax")

;; set the preamble for live previews
(setq markdown-xhtml-header-content "
<script>
MathJax = {
  tex: {
    inlineMath: [['$', '$'], ['\\\\(', '\\\\)']]
  },
  svg: {
    fontCache: 'global'
  }
};
</script>
<script src='https://polyfill.io/v3/polyfill.min.js?features=es6'></script>
<script id='MathJax-script' async src='https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js'></script>

<script>
let userIsViewingPage = true;

setInterval(focusChecker, 500);

function focusChecker() {
  if (document.hasFocus()) {
    if (!userIsViewingPage) {
      location.reload();
      userIsViewingPage = true;
    }
  } else {
    userIsViewingPage = false;
  }
}
</script>

")

;; open preview in firefox
;(defun open-html (html-file-path)
;  "Get the HTML file path & open it"
;  (shell-command (format "open -a /Applications/Firefox.app '%s'" html-file-path)))

;(setq markdown-live-preview-window-function #'open-html)

;; no need to continously open file.
(defun no-open (file)
  'nil)
(setq markdown-live-preview-window-function #'no-open)
