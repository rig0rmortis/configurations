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
;; (setq company-global-modes '(not eshell-mode))
;; (global-company-mode 1)
(add-hook 'after-init-hook 'global-company-mode)
(global-company-fuzzy-mode t)

;; Do some Helm configuration and fuzzy matching in Helm
(setq helm-completion-style t)
(setq helm-completion-style 'emacs)
(setq completion-styles '(flex))
(setq helm-show-completion-display-function 'helm-default-display-buffer)
;; (setq helm-eshell-fuzzy-match t)
;; (setq helm-completion-in-region-fuzzy-match t)
;; (setq helm-buffers-fuzzy-matching t)
;; (setq helm-recentf-fuzzy-match t)
;; (setq helm-mode-fuzzy-match t)
;; (setq helm-mini-fuzzy-match t)
;; (setq helm-m-x-fuzzy-match t)
;; (setq helm-etags-fuzzy-match t)
;; (setq helm-ff-fuzzy-matching t)
;; (setq helm-imenu-fuzzy-match t)
;; (setq helm-locate-fuzzy-match t)
;; (setq helm-apropos-fuzzy-match t)
;; (setq helm-session-fuzzy-match t)
;; (setq helm-locate-library-fuzzy-match t)
;; (setq helm-file-cache-fuzzy-match t)

(setq helm-autoresize-min-height 35)
(setq helm-autoresize-max-height 50)
(helm-autoresize-mode 1)

;; Tweak company idle delay
(setq company-idle-delay 0.5)

;; inline flycheck
(global-flycheck-inline-mode)

;; Tweak flycheck idle delay
(setq flycheck-idle-change-delay 0.3)

;; Run flycheck on save, not on every new line
(setq flycheck-check-syntax-automatically '(save mode-enable))
(add-hook 'after-init-hook #'global-flycheck-mode)

;; Set the default directory for emacs
(setq default-directory "~/src")

;; Don't let smartparens kill region conflict with kill region
(defun my-kill-region-or-line (&optional arg)
  "Kill active region or current line."
  (interactive "p")
  (if (use-region-p)
      (sp-kill-region (region-beginning) (region-end))
    (sp-kill-whole-line)))

;; Set C-w to above function
(global-set-key (kbd "C-w") 'my-kill-region-or-line)

;; Use helm auto completion in eshell
;; (add-hook 'eshell-mode-hook
;;           (lambda ()
;;             (define-key
;;               eshell-mode-map
;;               (kbd "<tab>")
;;               #'helm-esh-pcomplete)))
