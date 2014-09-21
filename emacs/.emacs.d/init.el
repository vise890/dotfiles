(require 'package)
(setq package-list '(evil
                     evil-leader

                     better-defaults

                     projectile

                     rainbow-delimiters

                     git-gutter

                     color-theme-solarized

                     markdown-mode

                     clojure-mode
                     clojure-test-mode
                     cider))

(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;;; fetch the list of available packages
(unless package-archive-contents
  (package-refresh-contents))

;;; install the missing packages
(dolist (pkg package-list)
        (unless (package-installed-p pkg)
                (package-install pkg)))

;;; projectile = project interaction library
(require 'projectile)
(projectile-global-mode)

;;; evil mode = vim keymappings
(require 'evil)
(evil-mode t)
;;; esc quits
(define-key evil-normal-state-map [escape] 'keyboard-quit)
(define-key evil-visual-state-map [escape] 'keyboard-quit)
(define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)

;;; evil leader = vim leader
(require 'evil-leader)
(global-evil-leader-mode)
(evil-leader/set-leader " ")
(evil-leader/set-key
  " " 'projectile-find-file)

;;; git-gutter = git diffs in the gutter
(require 'git-gutter)
(global-git-gutter-mode t)

;;; rainbow-delimiters = rainbow parens
(require 'rainbow-delimiters)
(global-rainbow-delimiters-mode)

;;; markdown-mode
(autoload 'markdown-mode "markdown-mode"
     "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;;; solarize
(load-theme 'solarized-dark t)
