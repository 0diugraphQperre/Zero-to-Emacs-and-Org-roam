(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
;; I suggest to keep these comment lines, too
;; below you will see customization automatically added by Emacs

;; Org and Org-roam

;;; Tell Emacs where sqlite3.exe is stored
(add-to-list 'exec-path "~/bin/sqlite-tools-win32-x86-3320200")

;;; Tell Emacs to start org-roam-mode when Emacs starts
(add-hook 'after-init-hook 'org-roam-mode)

;;; Define key bindings for Org-roam
(global-set-key (kbd "C-c n r") #'org-roam-buffer-toggle-display)
(global-set-key (kbd "C-c n i") #'org-roam-insert)
(global-set-key (kbd "C-c n /") #'org-roam-find-file)
(global-set-key (kbd "C-c n b") #'org-roam-switch-to-buffer)
(global-set-key (kbd "C-c n d") #'org-roam-find-directory)

;;; Let's also assign C-z to undo here
(global-set-key (kbd "C-z") 'undo) ;Emacs default is bound to hide Emacs.

;; Font
;;; If you want to know how to correct specify a font in Windows,
;;; invoke `eval-last-sexp' for (w32-select-font)
(set-face-attribute 'default nil  :font "iA Writer Quattro S-12")

;; Set theme
;;; (Optional) Setting `custom-safe-themes' to t.
;;; This prevents Emacs from asking if it is safe to load the theme.
(setq custom-safe-themes t)

;;; Automatically load the theme you like
;;; I am using Modus Operandi (light theme) here
;;; There is also modus-vivendi (dark theme)
(load-theme 'modus-operandi)

;; Ivy,Counsel, & Swiper
;;; Enable Ivy mode in general
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)

;;; Add Counsel and Swiper search functions
(global-set-key (kbd "C-c f r") #'counsel-recentf)
(global-set-key (kbd "C-c C-s") #'swiper)

;;; Reple default "M-x" and "C-x C-f" with Counsel version
(global-set-key (kbd "M-x") #'counsel-M-x)
(global-set-key (kbd "C-x C-f") #'counsel-find-file)

;; Optionally, you can replace these default functions with Counsel enhanced ones
;;(global-set-key (kbd "C-h f") 'counsel-describe-function)
;;(global-set-key (kbd "C-h v") 'counsel-describe-variable)

;; Olivetti
;; Look & Feel for long-form writing

;;; Set the body text width
(setq olivetti-body-width 80)

;;; Enable Olivetti for text-related mode such as Org Mode
(add-hook 'text-mode-hook 'olivetti-mode)

;; Optional aditional aesthetic changes
;; Adapted from `sanity.el' in Elegant Emacs by Nicolas P. Rougier (rougier)
;; https://github.com/rougier/elegant-emacs

(setq inhibit-startup-screen t)
(setq inhibit-startup-echo-area-message t)
(setq inhibit-startup-message t)
(setq initial-scratch-message nil)
(setq initial-major-mode 'org-mode)
(setq-default indent-tabs-mode nil)
(setq pop-up-windows nil)
(tool-bar-mode 0) 
(tooltip-mode  0)
(scroll-bar-mode 0)
(menu-bar-mode 1) ;menu bar is explictly turned on for beginners. Change the value to 0.

;; Optional aditional aesthetic changes
;; Adapted from `elegance.el' in Elegant Emacs by Nicolas P. Rougier (rougier)
;; https://github.com/rougier/elegant-emacs

;;; Line cursor and no blink
(set-default 'cursor-type  '(bar . 1))
(blink-cursor-mode 0)

;;; Line spacing, can be 0 for code and 1 or 2 for text
(setq-default line-spacing 0)

;;; Underline line at descent position, not baseline position
(setq x-underline-at-descent-line t)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (olivetti zygospore swiper-helm counsel ivy modus-operandi-theme modus-vivendi-theme org-roam))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
