(require 'init-elpa)
(require-package 'switch-window)

(define-key global-map (kbd "M-\\") 'switch-window)
(provide 'init-switch-window)
