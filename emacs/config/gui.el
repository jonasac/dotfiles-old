(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))
(when (fboundp 'menu-bar-mode) 
  (menu-bar-mode -1))
(blink-cursor-mode -1)
(setq inhibit-startup-screen t)
(setq scroll-margin 0
      scroll-conservatively 100000
      scroll-preserve-screen-position 1)
(line-number-mode t)
(column-number-mode t)
(size-indication-mode t)
(if (fboundp 'fringe-mode)
    (fringe-mode 4))
(fset 'yes-or-no-p 'y-or-n-p)
(set-fringe-mode 0)
(load-theme 'molokai t)
(provide 'gui)