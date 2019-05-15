;;;; wilsons's .emacs file
;; William Johnsson
;; 8 June 2019
;; Trying out vanilla emacs over Spacemacs for a more barebones and personalized experience.

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;; Disable blinking cursor
(blink-cursor-mode 0)

;; Remove toolbar
(tool-bar-mode -1)
;; Remove scrollbar
(scroll-bar-mode -1)

;; Set default font
(set-face-attribute 'default nil
                    :family "Hack"
                    :height 120     ; 12 pt
                    :weight 'normal
                    :width 'normal)
;; Another way of setting font (?)
(add-to-list 'default-frame-alist '(font . "Hack"))
(set-face-attribute 'default nil
		    :family "Hack")

;; Set theme to gruvbox
(load-theme 'gruvbox t)

;; Set cursor color to gruvbox orange
(set-cursor-color "#fe8019")

;; Add the MELPA repository.
(require 'package)
(add-to-list
 'package-archives
 ;; '("melpa" . "http://stable.melpa.org/packages/") ; many packages won't show if using this (stable)
 '("melpa" . "http://melpa.milkbox.net/packages/")
 t)

;; Activate helm
(require 'helm-config)

;; Replace regular keybinds to use helm variants
(global-set-key (kbd "M-x") #'helm-M-x)
(global-set-key (kbd "C-x r b") #'helm-filtered-bookmarks)
(global-set-key (kbd "C-x C-f") #'helm-find-files)

(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to run persistent action
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action)   ; make TAB work in terminal
;;(define-key helm-map (kbd "C-z")  'helm-select-action)              ; list actions using C-z

(helm-mode 1)

;; Activate org mode
(require 'org)
;; Activate org-bullets
(require 'org-bullets)
(add-hook 'org-mode-hook 'org-bullets-mode)
;; The emacs way isn't for me
(require 'evil)
(evil-mode 1)

;; Relative line numbers
(require 'nlinum-relative)
(nlinum-relative-setup-evil) ; setup for evil
(add-hook 'prog-mode-hook 'nlinum-relative-mode)
(setq nlinum-relative-redisplay-delay 0)      ;; delay

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("8f97d5ec8a774485296e366fdde6ff5589cf9e319a584b845b6f7fa788c9fa9a" "585942bb24cab2d4b2f74977ac3ba6ddbd888e3776b9d2f993c5704aa8bb4739" "a22f40b63f9bc0a69ebc8ba4fbc6b452a4e3f84b80590ba0a92b4ff599e53ad0" "1436d643b98844555d56c59c74004eb158dc85fc55d2e7205f8d9b8c860e177f" default)))
 '(package-selected-packages
   (quote
    (nlinum-relative evil gruvbox-theme magit org-bullets helm))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


