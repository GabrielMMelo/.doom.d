;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(defvar doom-dir "~/.doom.d/")
;; starts on fullscreen
(if IS-MAC (toggle-frame-fullscreen))

;; set paths ;;
(add-to-list 'load-path (concat doom-dir "gmelo/"))
(add-to-list 'load-path (concat doom-dir "secrets/"))

(defvar org-dir (if IS-MAC "~/Library/Mobile Documents/com~apple~CloudDocs/org/" "~/org/"))

(require 'gmelo-org nil 'noerror)
(require 'gmelo-tasks nil 'noerror)
(require 'gmelo-sql-client nil 'noerror)
(require 'gmelo-media nil 'noerror)
(require 'gmelo-tex nil 'noerror)
(require 'gmelo-keymaps nil 'noerror)
