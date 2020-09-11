(tool-bar-mode -1)
(toggle-scroll-bar -1)

(electric-pair-mode)

(load "~/.emacs.d/core/packages.el")
(load "~/.emacs.d/core/interface.el")

(load "~/.emacs.d/core/ide/ide-main.el")
(load "~/.emacs.d/core/ide/langs/java.el")
(load "~/.emacs.d/core/ide/langs/dart.el")

(load "~/.emacs.d/core/ide/projects.el")

(load "~/.emacs.d/core/keybindings.el")

(load "~/.emacs.d/core/org/org-custom.el")

(setq custom-file "~/.emacs.d/customization.el")

(load "~/.emacs.d/customization.el")

