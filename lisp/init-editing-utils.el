;;; init-editing-utils.el --- Editor behaviour.

;;; Commentary:
;;;  Indentation levels, highlight matching parenthesis, etc.

;;; Code:

; Cut/copy the current line if no region is active:
(require 'require-package)
(require-package 'whole-line-or-region)
(whole-line-or-region-mode t)

(show-paren-mode t)     ; Highlight matching parentheses.
(electric-pair-mode t)  ; Autocomplete pairs.
; Highlight the current line in graphical mode:
(if window-system (global-hl-line-mode t))

(setq-default
  auto-save-default nil   ; Don't auto save files.
  column-number-mode t    ; Show column number in status bar.
  indent-tabs-mode nil    ; Don't use tabs to indent.
  make-backup-files nil)  ; Don't create backup files.

; Insert line break and then indent the new line:
(global-set-key (kbd "RET") 'newline-and-indent)

(provide 'init-editing-utils)
;;; init-editing-utils.el ends here
