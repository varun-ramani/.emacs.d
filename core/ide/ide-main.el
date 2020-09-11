(use-package company
  :ensure t)

(use-package lsp-mode
  :ensure t
  :config
  (setq gc-cons-threshold 100000000)
  (setq read-process-output-max (* 1024 1024))
  (setq lsp-idle-delay 0.400)
  :bind
  ("C-c l d" . lsp-find-definition)
  ("C-c l a" . lsp-execute-code-action))

(use-package dap-mode
  :ensure t)

(use-package lsp-ui
  :ensure t)

(use-package flycheck
  :ensure t)

(setq lsp-prefer-flymake nil)
(setq lsp-ui-sideline-enable nil)
(setq lsp-ui-doc-enable nil)

(global-company-mode)
