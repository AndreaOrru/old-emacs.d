;;; init-web-mode.el --- Web template editing.

;;; Commentary:
;;;   Associate web mode to HTML/CSS/JS and Blade templates.

;;; Code:
(require 'require-package)
(require-package 'web-mode)

; File extension associations:
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.s?css\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.blade\\." . web-mode))

(defvar web-mode-engines-alist '(("blade" . "\\.blade\\.")))

; Mode preferences:
(add-hook 'web-mode-hook '(lambda()
  ; Indentation offsets:
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
  ; Highlight current HTML tag with a red-ish color:
  (setq web-mode-enable-current-element-highlight t)
  (set-face-background 'web-mode-current-element-highlight-face nil)
  (set-face-foreground 'web-mode-current-element-highlight-face "#cc6666")))

(provide 'init-web-mode)
;;; init-web-mode ends here
