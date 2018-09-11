(setq cider-default-cljs-repl 'figwheel-main)

(global-linum-mode)
(line-number-mode t)
(column-number-mode t)
(size-indication-mode t)

(use-package neotree
  :ensure t
  :init
  (setq neo-smart-open t
        projectile-switch-project-action #'neotree-projectile-action)
  :config
  (global-set-key [f8] 'neotree-toggle))

(use-package dash
    :ensure t)

(use-package base16-theme
  :ensure t
  :config
  (load-theme 'base16-railscasts t))

(use-package clj-refactor
  :ensure t)

(use-package smex
  :ensure t)

(use-package origami
  :ensure t
  :commands (origami-mode)
  :bind (:map origami-mode-map
              ("C-c o :" . origami-recursively-toggle-node)
              ("C-c o a" . origami-toggle-all-nodes)
              ("C-c o t" . origami-toggle-node)
              ("C-c o o" . origami-show-only-node)
              ("C-c o u" . origami-undo)
              ("C-c o U" . origami-redo)
              ("C-c o C-r" . origami-reset))
  :config
  (setq origami-show-fold-header t)
  ;; The python parser currently doesn't fold if/for/etc. blocks, which is
  ;; something we want. However, the basic indentation parser does support
  ;; this with one caveat: you must toggle the node when your cursor is on
  ;; the line of the if/for/etc. statement you want to collapse. You cannot
  ;; fold the statement by toggling in the body of the if/for/etc.
  (add-to-list 'origami-parser-alist '(python-mode . origami-indent-parser))
  :init
  (add-hook 'prog-mode-hook 'origami-mode))

(dolist (hook '(text-mode-hook))
  (add-hook hook (lambda ()
                   (flyspell-mode 1)
                   (visual-line-mode 1))))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (volatile-highlights counsel swiper ace-window ivy undo-tree which-key diff-hl crux super-save flycheck imenu-anywhere zop-to-char hl-todo company cask-mode yaml-mode markdown-mode erlang elixir-mode cider clojure-mode inf-ruby rainbow-mode rainbow-delimiters move-text exec-path-from-shell easy-kill anzu paredit elisp-slime-nav expand-region pt projectile ag git-timemachine magit avy zenburn-theme use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
