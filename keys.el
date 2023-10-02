;; Customized keybindings
;;
;; Includes keybindings which are NOT mode specific. Bindings which are specific to modes
;; are kept in the file with the package config.
(map! (:after evil
       :nv "C" #'evil-mc-make-cursor-move-next-line))

(map! (:after evil
              (:prefix "g"
               :nv "h" #'evil-beginning-of-line
               :nv "l" #'evil-end-of-line
               :nv "a" #'evil-switch-to-windows-last-buffer
               :nv "e" #'end-of-buffer)))

(map! :leader
      :after evil
      :nv "k" #'lsp-ui-doc-show
      :nv "d" #'neotree-toggle
      :nv "x" #'counsel-M-x)

(map! :leader
      :after evil
      :prefix "w"
      :nv "o" #'delete-other-windows)

;; Dired navigation
(map! (:map 'dired-mode-map
       :nv "h" 'dired-up-directory
       :nv "l" 'dired-find-file))
