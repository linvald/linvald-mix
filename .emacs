
;;

;;(setenv "HOME" "D:")
(if (fboundp 'normal-top-level-add-subdirs-to-load-path)
        (let* ((my-lisp-dir "D:/DropBox/mylisp")
              (default-directory my-lisp-dir))
           (setq load-path (cons my-lisp-dir load-path))
           (normal-top-level-add-subdirs-to-load-path)))

(add-to-list 'load-path "D:/Dropbox/mylisp/color-theme-6.6.0")
;;(require 'color-theme)
;; (eval-after-load "color-theme"
;;   '(progn
;;      (color-theme-initialize)
;;      (color-theme-hober)))

(global-set-key (kbd "C-x C-r") 'recentf-open-files)

(require 'zenburn)

(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-zenburn)))

(setq mac-command-modifier 'meta)

;;(global-hl-line-mode 1)
 
;; To customize the background color
;;(set-face-background 'hl-line "white")  
;;(set-face-foreground 'hl-line "black")


(require 'ascii)
(require 'browse-kill-ring)

;;(require 'ido)
;;(ido-mode t)

(require 'show-wspace)

(require 'tabbar)
(tabbar-mode)

(require 'shell-command)
(shell-command-completion-mode)

(require 'edit-env)

(require 'session)
(add-hook 'after-init-hook 'session-initialize)

(require 'pretty-print-xml-region)
(require 'uniquify-all-lines-region)

(setq inhibit-startup-message t) 	
(global-font-lock-mode 1)

(autoload 'log4j-mode "log4j-mode" "Major mode for viewing log files." t)
(add-to-list 'auto-mode-alist '("\\.log\\'" . log4j-mode))
 
(setq c-basic-offset 4)

; Associate c-mode with the .js extension
(setq auto-mode-alist (append '(("\\.js$" . c-mode)) auto-mode-alist))
(setq frame-title-format "%b :  %f")
(global-font-lock-mode t)
(setq font-lock-maximum-decoration t)
(transient-mark-mode t)

; match parenthesis
(show-paren-mode t)
(setq make-backup-files nil)
(auto-compression-mode t)
(column-number-mode 1)


(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(ftp-prompt-regexp "")
 '(global-auto-revert-mode t nil (autorevert))
 '(htmlize-view-print-visible t t)
 '(nxhtml-load t)
 '(nxml-child-indent 4)
 '(nxml-slash-auto-complete-flag t)
 '(nxml-where-global-mode t)
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(swbuff-y-mode t)
 '(tool-bar-mode nil)
 '(transient-mark-mode t))

(put 'dired-find-alternate-file 'disabled nil)
(put 'scroll-left 'disabled nil)

;; Nicer display of buffers
(require 'bs)
(global-set-key "\C-x\C-b" 'bs-show)

(setq load-path (add-to-list 'load-path "~/mylisp/muse-3.12"))
(require 'muse-mode)
(require 'muse-publish)
(require 'muse-html)  ;; and so on

;; Stop Emacs from asking for "y-e-s", when a "y" will do.
(fset 'yes-or-no-p 'y-or-n-p)

(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
