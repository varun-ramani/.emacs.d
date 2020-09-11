(use-package helm
  :ensure t
  :bind
  ("M-x" . helm-M-x))

(helm-mode 1)

(use-package helm-projectile
  :ensure t
  :bind
  ("C-c p f" . helm-projectile-find-file)
  ("C-c p p" . helm-projectile-switch-project))

(use-package treemacs
  :ensure t)

(use-package treemacs-projectile
  :ensure t)

(use-package which-key
  :ensure t
  :config
  (which-key-mode))

(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1))

(use-package xterm-color
  :ensure t)
(setq compilation-environment '("TERM=xterm-256color"))

(defun my/advice-compilation-filter (f proc string)
  (funcall f proc (xterm-color-filter string)))

(advice-add 'compilation-filter :around #'my/advice-compilation-filter)
