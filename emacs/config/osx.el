;; Fix metakey
(setq mac-option-modifier nil
      mac-command-modifier 'meta)

;; Add Homebrew to path
(let (osx-paths)
  (dolist (path '("/usr/local/bin")
                (setenv "PATH" (concat osx-paths (getenv "PATH"))))
    (push path exec-path)
    (setq osx-paths (concat (concat path ":") osx-paths))))
(provide 'osx)
