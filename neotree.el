;;; ../../git/doom/neotree.el -*- lexical-binding: t; -*-

(use-package! neotree
  :config
  (setq neo-theme (if (display-graphic-p) 'icons 'arrow))
  (setq projectile-switch-project-action 'neotree-projectile-action))

;; Autohide neotree when opening a file

(defun neo-open-file-hide (full-path &optional arg)
  "Open a file node and hides tree."
  (neo-global--select-mru-window arg)
  (find-file full-path)
  (neotree-hide))

(defun neotree-enter-hide (&optional arg)
  "Enters file and hides neotree directly"
  (interactive "P")
  (neo-buffer--execute arg 'neo-open-file-hide 'neo-open-dir))

(map! :map neotree-mode-map
      :nv "RET" #'neotree-enter-hide)
