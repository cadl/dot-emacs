(require-package 'irony)
(require-package 'company-irony)

(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)

(eval-after-load 'company
  '(add-to-list 'company-backends 'company-irony))

(add-hook 'irony-mode-hook 'company-irony)
(add-hook 'irony-mode-hook 'semantic-mode)
(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)

(provide 'init-c)
