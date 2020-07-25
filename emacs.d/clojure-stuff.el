;; Flycheck shit
(require 'flycheck-clj-kondo)

;; Add cider-mode to clojure-mode hook
(add-hook 'clojure-mode-hook #'cider-mode)

;; Use paredit for clojure
(add-hook 'clojure-mode-hook #'paredit-mode)

;; global smartparens mode
;; (smartparens-global-mode t)

;; use helm mode for cider commands that support it
(helm-cider-mode 1)

;; tab complete without losing the ability to manually indent
;; (global-set-key (kbd "tab") #'company-indent-or-complete-common)

;; fuzzy matching in company mode
(add-hook 'cider-repl-mode-hook #'cider-company-enable-fuzzy-completion)
(add-hook 'cider-mode-hook #'cider-company-enable-fuzzy-completion)

;; better colors for clojure
(setq cider-font-lock-dynamically '(macro core function var))

;; wrap cider repl history
(setq cider-repl-wrap-history t)

(global-flycheck-inline-mode)
