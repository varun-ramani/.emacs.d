(use-package evil
  :ensure t
  :init
  (evil-mode 1))

(use-package general
  :ensure t)

(general-define-key
 :keymaps 'normal
 :prefix "SPC"
 "SPC" '(counsel-M-x :which-key "Show all commands (M-x)"))

(general-define-key
 :keymaps 'normal
 :prefix "SPC c"
 "e" '((lambda () (interactive) (counsel-projectile-find-file "~/.emacs.d")) :which-key "Open config dir")
 "r" '((lambda () (interactive) (load-file "~/.emacs.d/init.el")) :which-key "Reload configuration"))
