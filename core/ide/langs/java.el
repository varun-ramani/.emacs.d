(use-package lsp-java
  :ensure t
  :defer t)

(add-hook 'java-mode-hook #'lsp)
