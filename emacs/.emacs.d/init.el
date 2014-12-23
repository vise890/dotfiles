(require 'package)
(setq  package-archives '(("melpa" . "http://melpa.milkbox.net/packages/")
                          ("org" . "http://orgmode.org/elpa/")
                          ("gnu" . "http://elpa.gnu.org/packages/")
                          ("marmalade" . "http://marmalade-repo.org/packages/")))

(setq package-list '(better-defaults

                     projectile

                     rainbow-mode

                     git-gutter

                     color-theme-solarized

                     markdown-mode

                     ;clojure-mode
                     ;clojure-test-mode
                     ;cider

                     elisp-slime-nav

                     evil))
                     ;evil-leader))

(package-initialize) ; initialize the `package` pacake

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

;;; rainbow-mode = colorful parentheses
(require 'rainbow-mode)
(rainbow-delimiters-mode)

;;; git-gutter = git diffs in the gutter
(require 'git-gutter)
(global-git-gutter-mode t)

;;; markdown-mode
(autoload 'markdown-mode "markdown-mode"
     "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;;; color theme
(load-theme 'solarized-dark t)

;;; elisp
(require 'elisp-slime-nav)
(defun my-elisp-hook ()
  (elisp-slime-nav-mode)
  (turn-on-eldoc-mode)) ;; display fun signature in minibuffer
(add-hook 'emacs-lisp-mode-hook 'my-elisp-hook) ;; call my-elisp-hook when emacs-lisp-mode gets enabled

;;; evil mode = vim keymappings
(require 'evil)
(evil-mode t) ; on by default
;; normal state with C-c
;; FIXME: this will have to go as I am given to
;; understand C-c is pretty important in emacs
(define-key evil-insert-state-map (kbd "C-c") 'evil-normal-state)
;;; esc quits
(define-key evil-normal-state-map [escape] 'keyboard-quit) (define-key
                                                             evil-visual-state-map
                                                             [escape]
                                                             'keyboard-quit)
(define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)
;; move around windows easily
(define-key evil-normal-state-map (kbd "C-h") 'evil-window-left) (define-key
                                                                   evil-normal-state-map
                                                                   (kbd "C-j")
                                                                   'evil-window-down)
(define-key evil-normal-state-map (kbd "C-k") 'evil-window-up) (define-key
                                                                 evil-normal-state-map
                                                                 (kbd "C-l")
                                                                 'evil-window-right)
;; elisp docs
(evil-define-key 'normal emacs-lisp-mode-map (kbd "K")
                 'elisp-slime-nav-describe-elisp-thing-at-point)
