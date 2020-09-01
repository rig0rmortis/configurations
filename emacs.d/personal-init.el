;; Personal custom config here
(require 'prelude-helm-everywhere)

;; All The Icons and Doom Modeline :)
(require 'all-the-icons)
(require 'doom-modeline)
(doom-modeline-mode 1)

;; Use relative line number mode
(require 'nlinum-relative)
(add-hook 'prog-mode-hook 'global-nlinum-relative-mode)
(setq nlinum-relative-redisplay-delay 0)      ;; delay
(setq nlinum-relative-current-symbol "")      ;; or "" for display current line number
(setq nlinum-relative-offset 0)               ;; 1 if you want 0, 2, 3...

;; Set ESC (which is mapped to CTRL-g) to be keyboard escape quit
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

;; Global default font
(set-frame-font "JetBrains Mono 13" nil t)

;; Disable vertical scroll bars
(scroll-bar-mode -1)

;; Open eshell history in same window
(setq helm-show-completion-display-function #'helm-show-completion-default-display-function)

;; Enable slime
;; Set your lisp system and, optionally, some contribs
(setq inferior-lisp-program "/usr/local/bin/sbcl")
(setq slime-contribs '(slime-fancy))

;; whitespace mode
(global-whitespace-mode t)

;; Automatically remove whitespace on save
(add-hook 'before-save-hook 'whitespace-cleanup)

;; Enable global company-mode and enable fuzzy matching
(add-hook 'after-init-hook 'global-company-mode)
(global-company-fuzzy-mode t)

;; Fuzzy matching in Helm
(setq helm-mode-fuzzy-match t)
(setq helm-completion-in-region-fuzzy-match t)

;; Make company mode faster
(setq company-idle-delay 0.1)

;; Make flycheck faster pew pew
(setq flycheck-idle-change-delay 0.1)

;; Run flycheck on save, not on every new line
(setq flycheck-check-syntax-automatically '(save mode-enable))
(add-hook 'after-init-hook #'global-flycheck-mode)

;; Set the default directory for emacs
(setq default-directory "~/")
