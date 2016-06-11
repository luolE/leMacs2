(require 'init-elpa)
(require-package 'yasnippet-bundle)
(require-package 'yasnippet)

;; (require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/emacs/site-lisp/yasnippet-snippets")
(setq yas/prompt-functions '(yas/dropdown-prompt))

(yas/global-mode 1)
(yas/minor-mode-on)

(provide 'init-yasnippet)
