(require-package 'json-mode)
(require-package 'js2-mode)
(require-package 'ac-js2)
(require-package 'coffee-mode)

(after-load 'js2-mode
  (define-key js2-mode-map (kbd "TAB") 'indent-for-tab-command))
(defvar preferred-javascript-indent-level 2)
(setq js2-use-font-lock-faces t
      js2-mode-must-byte-compile nil
      js2-basic-offset preferred-javascript-indent-level
      js2-indent-on-enter-key t
      js2-auto-indent-p t
      js2-bounce-indent-p nil)
(setq js-indent-level preferred-javascript-indent-level)
(after-load 'coffee-mode
  (setq coffee-js-mode preferred-javascript-mode
        coffee-tab-width preferred-javascript-indent-level))
(add-to-list 'auto-mode-alist '("\\.coffee\\.erb\\'" . coffee-mode))
(provide 'init-javascript)
