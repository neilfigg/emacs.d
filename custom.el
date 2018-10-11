(setq cider-default-cljs-repl 'figwheel-main)

(global-linum-mode)

(add-hook 'clojure-mode-hook #'paredit-mode)

;;(use-package org :ensure org-plus-contrib :pin org)

(use-package clj-refactor
  :ensure t)

(use-package smex
  :ensure t)

(use-package dash
    :ensure t)

(use-package ag
    :ensure t)

(use-package base16-theme
  :ensure t
  :config
  (load-theme 'base16-railscasts t))

(dolist (hook '(text-mode-hook))
  (add-hook hook (lambda ()
                   (flyspell-mode 1)
                   (visual-line-mode 1))))

(setq default-directory "~/data/gitlab/tenfren/")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (flx zop-to-char zenburn-theme yaml-mode which-key volatile-highlights use-package undo-tree super-save smex rainbow-mode rainbow-delimiters pt projectile org-plus-contrib move-text markdown-mode magit inf-ruby imenu-anywhere hl-todo git-timemachine flycheck expand-region exec-path-from-shell erlang elixir-mode elisp-slime-nav easy-kill diff-hl crux counsel company clj-refactor cask-mode base16-theme anzu ag ace-window))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
