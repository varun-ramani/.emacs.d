(use-package evil
  :ensure t
  :config
  (evil-mode 1))

(use-package general
  :ensure t)

;; Bring up the commands list
(general-define-key
 :keymaps 'normal
 :prefix "SPC"
 "SPC" '(counsel-M-x :which-key "Show all commands (M-x)"))

;; Config keybindings
(general-define-key
 :keymaps 'normal
 "SPC c" '(:which-key "Config options")
 "SPC c e" '((lambda () (interactive) (counsel-find-file "~/.emacs.d")) :which-key "Open config dir")
 "SPC c r" '((lambda () (interactive) (load-file "~/.emacs.d/init.el")) :which-key "Reload"))

;; Window keybindings
(general-define-key
 :keymaps 'normal
 "SPC q" '(evil-quit :which-key "Closes current window"))

(general-define-key
 :keymaps 'normal
 "SPC s" '(:which-key "Split window")
 "SPC s l" '((lambda () (interactive) (split-window-horizontally) (evil-window-right 1)) :which-key "Split right")
 "SPC s j" '((lambda () (interactive) (split-window-vertically) (evil-window-down 1)) :which-key "Split down")
 "SPC s h" '(split-window-horizontally :which-key "Split left")
 "SPC s k" '(split-window-vertically :which-key "Split up"))

(general-define-key
 :keymaps 'normal
 "SPC w" '(:which-key "Window nav")
 "SPC w l" '(evil-window-right :which-key "Right window")
 "SPC w k" '(evil-window-up :which-key "Top window")
 "SPC w j" '(evil-window-down :which-key "Bottom window")
 "SPC w h" '(evil-window-left :which-key "Left window"))

;; Frame commands
(general-define-key
 :keymaps 'normal
 "SPC F" '(:which-key "Frame")
 "SPC F n" '(make-frame :which-key "Create frame")
 "SPC F o" '(other-frame :which-key "Switch frame")
 "SPC F d" '(other-frame :which-key "Delete frame"))

;; Buffer keybindings
(general-define-key
 :keymaps 'normal
 "SPC b" '(:which-key "Buffers")
 "SPC b s" '(switch-to-buffer :which-key "Switch to buffer")
 "SPC b k" '(kill-buffer :which-key "Kill a buffer"))

;; File keybindings
(general-define-key
 :keymaps 'normal
 "SPC f" '(:which-key "File")
 "SPC f f" '(counsel-find-file :which-key "Find file")
 "SPC f w" '(save-buffer :which-key "Write file")
 "SPC f r" '(rename-file :which-key "Rename file")
 "SPC f d" '(delete-file :which-key "Delete file"))

;; Projectile keybindings
(general-define-key
 :keymaps 'normal
 "SPC p" '(:which-key "Projectile")
 "SPC p p" '(counsel-projectile-switch-project :which-key "Switch project")
 "SPC p f" '(counsel-projectile-find-file :which-key "Find file in project"))

;; IDE keybindings
(general-define-key
 :keymaps 'normal
 "SPC i" '(:which-key "IDE")
 "SPC i a" '(lsp-execute-code-action :which-key "Execute code action")
 "SPC i r" '(lsp-rename :which-key "Rename symbol"))

;; Tree keybindings
(general-define-key
 :keymaps 'normal
 "SPC t" '(:which-key "File tree")
 "SPC t p a" '(treemacs-add-project-to-workspace :which-key "Add folder to wkspace")
 "SPC t p r" '(treemacs-remove-project-from-workspace :which-key "Remove folder from wkspace")
 "SPC t d" '(treemacs-delete :which-key "Delete file")
 "SPC t m" '(treemacs-move :which-key "Move file")
 "SPC t r" '(treemacs-rename :which-key "Rename file")
 "SPC t R" '(treemacs-refresh :which-key "Refresh tree")
 "SPC t t" '(treemacs :which-key "Toggle tree"))

;; Ivy keybindings
(general-define-key
 :keymaps 'ivy-mode-map
 "C-j" 'ivy-next-line
 "C-k" 'ivy-previous-line)

;; Org Mode keybindings
(general-define-key
 :keymaps 'normal
 "SPC o" '(:which-key "Org Mode")
 "SPC o a" '(:which-key "Org agenda")
 "SPC o a t" '(org-todo :which-key "Org todo")
 "SPC o a a" '(org-agenda-file-to-front :which-key "Add this file to agenda")
 "SPC o a v" '(org-agenda-list :which-key "View agenda")

 "SPC o t" '(org-time-stamp :which-key "Org timestamp")
 "SPC o d" '(org-deadline :which-key "Org deadline")
 "SPC o s" '(org-schedule :which-key "Org schedule"))

(general-define-key
 :keymaps 'normal
 :major-mode 'org-agenda-mode
 "SPC o a t" '(org-agenda-todo :which-key "Org agenda todo")
 "SPC o s" '(org-agenda-schedule :which-key "Org agenda schedule")
 "SPC o d" '(org-agenda-deadline :which-key "Org agenda deadline"))

(evil-set-initial-state 'org-agenda-mode 'normal)
