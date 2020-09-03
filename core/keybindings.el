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
 "SPC f w" '(save-buffer :which-key "Write file"))

;; Projectile keybindings
(general-define-key
 :keymaps 'normal
 "SPC p" '(:which-key "Projectile")
 "SPC p p" '(counsel-projectile-switch-project :which-key "Switch project")
 "SPC p f" '(counsel-projectile-find-file :which-key "Find file in project"))

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
 "SPC o a a" '(org-agenda-file-to-front :which-key "Add this file to agenda")
 "SPC o a r" '(org-agenda-file-to-front :which-key "Remove file from agenda")
 "SPC o a v" '(org-agenda-list :which-key "View agenda"))
