(require 'package)

;;; add lisp/ to load-path
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;;; init elpa start
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))

;;; require-package func
(defun require-package (package &optional min-version no-refresh)
  "Install given PACKAGE, optionally requiring MIN-VERSION.
If NO-REFRESH is non-nil, the available package lists will not be
re-downloaded in order to locate PACKAGE."
  (if (package-installed-p package min-version)
      t
    (if (or (assoc package package-archive-contents) no-refresh)
        (package-install package)
      (progn
        (package-refresh-contents)
        (require-package package min-version t)))))

(package-initialize)
;;; init elpa end

(setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))
(setenv "PYTHONPATH" (concat (getenv "PATH") ":/usr/local/lib/python2.7/site-packages"))
(setq exec-path (append exec-path '("/usr/local/bin")))

(when (eq system-type 'darwin)
  (setq mac-command-modifier 'meta)
  (setq mac-option-modifier nil))

(require-package 'project-local-variables)
(require-package 'scratch)
(require-package 'mwe-log-commands)

;;; basic
(require 'init-utils)
(require 'init-editing-utils)
(require 'init-themes)
(require 'init-ibuffer)
(require 'init-flycheck)
(require 'init-ido)
(require 'init-hippie-expand)
(require 'init-mmm)
(require 'init-git)
(require 'init-helm)
(require 'init-semantic)
(require 'init-projectile)

;;; programming language
(require 'init-tex)
(require 'init-webmode)
(require 'init-crontab)
(require 'init-markdown)
(require 'init-python)
(require 'init-javascript)
(require 'init-css)
(require 'init-c)
(require 'init-rust)
(require 'init-go)
(require 'init-scala)
(require 'init-yaml)
;;; programming language

;;;(require 'init-spelling)
(require 'init-misc)
(require 'init-local)

(require-package 'rainbow-delimiters)
(require-package 'ack)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(elpy-eldoc-show-current-function nil)
 '(js2-basic-offset 2)
 '(markdown-command "/usr/bin/pandoc"))

(provide 'init)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
