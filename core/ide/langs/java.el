(use-package lsp-java
  :ensure t
  :defer t)


(require 'dap-java)

(add-hook 'java-mode-hook #'lsp)
