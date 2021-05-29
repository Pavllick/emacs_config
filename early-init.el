(setq byte-compile-warnings '(cl-functions))

(package-initialize)

(require 'package)
(setq package-enable-at-startup nil)
;; (setq use-package-always-ensure t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
;; (add-to-list 'package-archives '("melpa2" . "http://www.mirrorservice.org/sites/melpa.org/packages/"))
;; (add-to-list 'package-archives '("melpa3" . "http://www.mirrorservice.org/sites/stable.melpa.org/packages/"))

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
	(package-refresh-contents)
	(package-install 'use-package))

(org-babel-load-file (expand-file-name "~/.emacs.d/org-init.org"))
