;; Use spaces instead of tabs
(setq-default indent-with-tabs-mode nil)
;; Keep tabs 8 spaces wide
(setq-default tab-width 8)

;; Change buffers when the files they refer to are changed
(global-auto-revert-mode t)

;; Store backup and autosave files in tmp dir
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))
(ido-mode t)
(setq ido-enable-prefix nil
      ido-enable-flex-matching t
      ido-create-new-buffer 'always
      ido-use-filename-at-point 'guess
      ido-max-prospects 10
      ido-save-directory-list-file (concat save-dir "ido.hist")
      ido-default-file-method 'selected-window)

(show-paren-mode +1)
;; Clean up obsolete buffers
(require 'midnight)
(setq eshell-directory-name (concat save-dir "/eshell/"))
(setq ring-bell-function 'ignore)
(prefer-coding-system 'utf-8)
(set-language-environment "UTF-8")

;; Highlight the current line
(global-hl-line-mode +1)

;; Use shift + arrow for moving between windows 
(require 'windmove)
(windmove-default-keybindings)
(provide 'editor)
