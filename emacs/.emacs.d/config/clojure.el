(add-hook 'clojure-mode-hook 'smartparens-strict-mode)
(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)
(add-hook 'clojure-mode-hook 'whitespace-cleanup-mode)
(add-hook 'clojure-mode-hook 'cider-mode)

(bind-map clojure-leader-map
  :evil-keys (",")
  :evil-states (normal visual)
  :major-modes (clojure-mode))

(bind-map-set-keys clojure-leader-map
  "eb" 'cider-eval-buffer
  "ee" 'cider-eval-last-sexp

  "fb" 'cider-format-buffer

  "ss" 'cider-switch-to-repl-buffer
  "sx" 'cider-refresh

  "gg" 'cider-find-var

  "hh" 'cider-doc
  "hg" 'cider-grimoire
  "hj" 'cider-javadoc)

(provide 'clojure)
