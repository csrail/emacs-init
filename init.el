;;;;init.el --- Cornelius's emacs config file
;author: Cornelius Soon <corneilus.soon@gmail.com>

;;;;commentary
;.C-h i and select Emacs Lisp Intro > Emacs Initialisation to find out more on how to configure your file
;Info > Emacs > Packages > installed packages are placed in a subdirectory of ‘~/.emacs.d/elpa/’

;.a special form in emacs is a syntax used to write code, for example (setq SYM VAL) is a special form
;.words preceded by a quotation mark are symbols
;.setq points a symbol to a value

;;;;configuration
(setq package-check-signature t)
(require 'package)


;;;focus
;reduce distractions
(setq inhibit-startup-screen t)
(find-file "~/.emacs.d/init.el")
(setq ring-bell-function 'ignore)
(blink-cursor-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)
(toggle-frame-fullscreen)

;;;formatting
(column-number-mode) ;shows column number alongside line number
(electric-pair-mode) ;pairs like delimiters together
(setq comment-column 0) ;prevents elisp from indenting comments 32 columns across
(global-linum-mode)

;(package-installed-p )
;(package-install)
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)

;;;;code
;. C-h i and select elisp > System Interfaces > Time Calculations

;.calculate the day difference between 1 July 2023 and current date
;.multiply the result with $100
;.print this to a temporary buffer
;.show this temporary buffer
;.allow pressing q to exit the buffer

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes '(misterioso)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
