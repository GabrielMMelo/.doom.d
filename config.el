;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; startup tweaks ;;
;; starts on fullscreen
(toggle-frame-fullscreen)

;; vars ;;
(defvar doom-dir "~/.doom.d/")
(defvar org-dir (if IS-MAC "~/Library/Mobile Documents/com~apple~CloudDocs/org/" "~/org/"))

;; set paths ;;
(add-to-list 'load-path (concat doom-dir "gmelo/"))
(add-to-list 'load-path (concat doom-dir "secrets/"))


(require 'gmelo-org nil 'noerror)
(require 'gmelo-tasks nil 'noerror)
(require 'gmelo-sql-client nil 'noerror)
(require 'gmelo-media nil 'noerror)
(require 'gmelo-keymaps nil 'noerror)
