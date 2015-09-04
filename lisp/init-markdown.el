(require-package 'markdown-mode)

(setq auto-mode-alist
      (cons '("\\.\\(md\\|markdown\\)\\'" . markdown-mode) auto-mode-alist))
(custom-set-variables
 '(markdown-command "/usr/bin/pandoc"))
(provide 'init-markdown)
