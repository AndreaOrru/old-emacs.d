;;; init-javascript.el --- JavaScript mode.

;;; Commentary:
;;;   JavaScript IDE mode for JS, JSX files.

;;; Code:

; Install the unstable version of js2-mode:
(add-to-list 'package-pinned-packages '(js2-mode . "melpa"))
(require 'require-package)
(require-package 'js2-mode)

; Associate file extensions:
(add-to-list 'auto-mode-alist '("\\.js\\'"  . js2-mode))
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . js2-jsx-mode))

(setq-default js2-basic-offset 2)

(provide 'init-javascript)
;;; init-javascript.el ends here
