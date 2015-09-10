(require-package 'elpy)

(global-set-key (kbd "C-c .") 'elpy-goto-definition)
(global-set-key (kbd "C-c ,") 'pop-tag-mark)
(elpy-enable)

(when (require 'flycheck nil t)
    (remove-hook 'elpy-modules 'elpy-module-flymake)
      (add-hook 'elpy-mode-hook 'flycheck-mode))

(provide 'init-python)
