(require-package 'irony)
(require-package 'company-irony)

(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)

;; replace the `completion-at-point' and `complete-symbol' bindings in
;; irony-mode's buffers by irony-mode's function
;;(defun my-irony-mode-hook ()
;;  (define-key irony-mode-map [remap completion-at-point]
;;    'irony-completion-at-point-async)
;;  (define-key irony-mode-map [remap complete-symbol]
;;    'irony-completion-at-point-async))
;;(add-hook 'irony-mode-hook 'my-irony-mode-hook)
(eval-after-load 'company
  '(add-to-list 'company-backends 'company-irony))

(defun company-irony-hook()
  (company-mode 1))

(add-hook 'irony-mode-hook 'company-irony-hook)
(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)

(provide 'init-c)
