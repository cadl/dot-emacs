(require-package 'helm)

;;; (global-set-key (kbd "M-x") 'helm-M-x)
(setq helm-buffers-fuzzy-matching t
      helm-recentf-fuzzy-match    t)
(global-set-key [(f7)] 'helm-mini)


(provide 'init-helm)
