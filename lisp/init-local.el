(require-package 'exec-path-from-shell)
(require-package 'bind-key)

(blink-cursor-mode 0)
(desktop-save-mode 0)
(if (eq system-type 'darwin)
    (set-default-font "Monaco 14"))
(set-fontset-font "fontset-default" 'han '("Ping Fang"))
(setq ring-bell-function #'ignore)

(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

;;---------------------------------------------------------------------------
;; global key binding
;;---------------------------------------------------------------------------

(bind-key* "M-n" 'highlight-symbol-next)
(bind-key* "M-p" 'highlight-symbol-prev)

(provide 'init-local)
