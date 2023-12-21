;; Configuration for Rustic

(use-package! rustic
  :custom
  (rustic-analyzer-command '("rustup" "run" "stable" "rust-analyzer"))
  :config
  (setq lsp-rust-analyzer-cargo-watch-command "clippy")
  ;; Compile projects with all features
  (setq lsp-rust-features "all")
  (setq lsp-rust-analyzer-checkonsave-features "all")
  ;; For some reason rust-analyzer is complaining about proc macro expansions after the last update
  ;; adding this for now to reduce the noise
  (setq lsp-rust-analyzer-diagnostics-disabled [ "unresolved-proc-macro" ])
)
