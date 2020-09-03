(tool-bar-mode -1)
(toggle-scroll-bar -1)

(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))
(setq default-directory "~")

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

(electric-pair-mode)

(load "~/.emacs.d/core/packages.el")
(load "~/.emacs.d/core/interface.el")

(load "~/.emacs.d/core/ide/completion.el")
(load "~/.emacs.d/core/ide/langs/java.el")
(load "~/.emacs.d/core/ide/langs/dart.el")

(load "~/.emacs.d/core/ide/projects.el")

(load "~/.emacs.d/core/keybindings.el")
(load "~/.emacs.d/appearance.el")


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("2f1518e906a8b60fac943d02ad415f1d8b3933a5a7f75e307e6e9a26ef5bf570" default))
 '(org-agenda-files '("~/Dropbox/org/MATH141.org" "~/Dropbox/org/BSCI189I.org"))
 '(package-selected-packages '(evil-mode use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
