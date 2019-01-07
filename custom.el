
(setq cider-default-cljs-repl 'figwheel-main)

(global-linum-mode)

(add-hook 'clojure-mode-hook #'paredit-mode)

(use-package projectile
  :ensure t
  :init
  (setq projectile-completion-system 'ivy)
  :config
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
  (projectile-mode +1))
  
(use-package clj-refactor
  :ensure t)

(use-package smex
  :ensure t)

(use-package dash
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

(if (require 'toc-org nil t)
    (add-hook 'org-mode-hook 'toc-org-enable)
  (warn "toc-org not found"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (toc-org org org-grep org-gcal zop-to-char zenburn-theme yaml-mode which-key volatile-highlights use-package undo-tree super-save rainbow-mode rainbow-delimiters pt projectile paredit move-text markdown-mode magit inf-ruby imenu-anywhere hl-todo git-timemachine flycheck flx expand-region exec-path-from-shell erlang elixir-mode elisp-slime-nav easy-kill diff-hl crux counsel company cider cask-mode anzu ag ace-window))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
