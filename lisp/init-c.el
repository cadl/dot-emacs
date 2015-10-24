(require-package 'irony)
(require-package 'company-irony)

(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)

(add-hook 'irony-mode-hook
          '(lambda ()
             (company-mode)
             (company-irony)
             (irony-cdb-autosetup-complie-option)))

(add-hook 'c-mode-hook
          '(lambda ()
             (semantic-mode)
             (local-set-key (kbd "C-c ,") 'pop-tag-mark)
             (local-set-key (kbd "C-c .") 'semantic-ia-fast-jump)))

(eval-after-load 'company
  '(add-to-list 'company-backends 'company-irony))

(provide 'init-c)
