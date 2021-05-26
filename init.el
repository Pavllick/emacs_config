;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;; (package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
	 [default default default italic underline success warning error])
 '(ansi-color-names-vector
	 ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 '(custom-enabled-themes '(darktooth))
 '(custom-safe-themes
	 '("d2e0c53dbc47b35815315fae5f352afd2c56fa8e69752090990563200daae434" "190a9882bef28d7e944aa610aa68fe1ee34ecea6127239178c7ac848754992df" "bcc6775934c9adf5f3bd1f428326ce0dcd34d743a92df48c128e6438b815b44f" "cbe892ce669f001193ccbb3b50a6fa402fe2560b3fe802354d73aeb0710a1c63" default))
 '(ecb-options-version "2.50")
 '(ecb-source-path '(("/" "/")))
 '(fci-rule-color "#5E5E5E")
 '(flycheck-googlelint-filter "-whitespace,+whitespace/braces")
 '(flycheck-googlelint-linelength "120")
 '(flycheck-googlelint-root "project/src")
 '(flycheck-googlelint-verbose "3")
 '(flymake-google-cpplint-command "/usr/local/bin/cpplint.py")
 '(global-ede-mode t)
 '(gud-gdb-command-name "gdb --annotate=1")
 '(large-file-warning-threshold nil)
 '(max-specpdl-size 1335)
 '(org-default-notes-file (concat org-directory "/notes.org"))
 '(org-directory "~/Sync/orgfiles")
 '(org-export-html-postamble nil)
 '(org-hide-leading-stars t)
 '(org-startup-folded 'overview)
 '(org-startup-indented t)
 '(package-selected-packages
	 '(yaml-mode treemacs-all-the-icons treemacs-magit treemacs-icons-dired treemacs-projectile treemacs web-mode lsp-treemacs lsp-ivy lsp-ui flycheck-irony lsp-mode typescript-mode yasnippet ido projectile company-quickhelp omnisharp csharp-mode ob-elixir alchemist elixir-mode gnuplot ivy git-timemachine git-gutter magit company-c-headers nlinum ace-window htmlize noflet seq org-bullets org-pomodoro writeroom-mode org-cliplink grab-mac-link fullframe counsel swiper which-key try auto-complete-config bundler rvm ecb visual-regexp-steroids visual-regexp linum+ spaceline-config quick-peek flycheck-inline company ido-complete-space-or-hyphen ido-ubiquitous use-package all-the-icons neotree spaceline smex hc-zenburn-theme zenburn-theme darktooth-theme flycheck yasnippet-snippets yasnippet-classic-snippets iedit auto-complete-c-headers auto-compile))
 '(pos-tip-background-color "#36473A")
 '(pos-tip-foreground-color "#FFFFC8")
 '(ps-font-size '(7 . 8.5))
 '(scroll-bar-mode nil)
 '(truncate-lines t)
 '(vc-annotate-background "#202020")
 '(vc-annotate-color-map
	 '((20 . "#C99090")
		 (40 . "#D9A0A0")
		 (60 . "#ECBC9C")
		 (80 . "#DDCC9C")
		 (100 . "#EDDCAC")
		 (120 . "#FDECBC")
		 (140 . "#6C8C6C")
		 (160 . "#8CAC8C")
		 (180 . "#9CBF9C")
		 (200 . "#ACD2AC")
		 (220 . "#BCE5BC")
		 (240 . "#CCF8CC")
		 (260 . "#A0EDF0")
		 (280 . "#79ADB0")
		 (300 . "#89C5C8")
		 (320 . "#99DDE0")
		 (340 . "#9CC7FB")
		 (360 . "#E090C7")))
 '(vc-annotate-very-old-color "#E090C7"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 4.0))))
 '(company-scrollbar-bg ((t (:background "#41c141c141c1"))))
 '(company-scrollbar-fg ((t (:background "#34f434f434f4"))))
 '(company-tooltip ((t (:inherit default :background "#2d462d462d46"))))
 '(company-tooltip-common ((t (:inherit font-lock-constant-face))))
 '(company-tooltip-selection ((t (:inherit font-lock-function-name-face)))))

(put 'ivy-switch-buffer 'disabled nil)

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
