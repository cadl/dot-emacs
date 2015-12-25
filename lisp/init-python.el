(require-package 'elpy)

(elpy-enable)

(custom-set-variables
 '(elpy-eldoc-show-current-function nil))

(add-hook 'python-mode-hook
    '(lambda ()
       (local-set-key "\C-c." 'elpy-goto-definition)
       (local-set-key "\C-c," 'pop-tag-mark)))

(when (require 'flycheck nil t)
  (remove-hook 'elpy-modules 'elpy-module-flymake)
  (add-hook 'elpy-mode-hook 'flycheck-mode))

(provide 'init-python)
