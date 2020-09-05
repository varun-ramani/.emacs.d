(use-package company
  :ensure t)

(use-package lsp-mode
  :ensure t
  :config
  (setq gc-cons-threshold 100000000)
  (setq read-process-output-max (* 1024 1024))
  (setq lsp-idle-delay 0.400))

(global-company-mode)
