(require-package 'irony)
(require-package 'company-irony)
(require-package 'ggtags)

(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c++-mode-hook 'ggtags-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)

(add-hook 'irony-mode-hook
          '(lambda ()
             (company-mode)
             (setq flycheck-clang-include-path '("/usr/local/include"))))
(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)

(add-hook 'c-mode-hook
          '(lambda ()
             (ggtags-mode)
             (local-set-key (kbd "C-c ,") 'pop-tag-mark)
             (local-set-key (kbd "C-c .") (kbd "M-."))))

(eval-after-load 'company
  '(add-to-list 'company-backends 'company-irony))

(provide 'init-c)
