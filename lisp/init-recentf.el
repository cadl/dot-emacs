(recentf-mode 1)
(setq recentf-max-saved-items 1000
      recentf-exclude '("/tmp/" "/ssh:"))

(global-set-key (kbd "<f7>") 'recentf-open-files)


(provide 'init-recentf)
