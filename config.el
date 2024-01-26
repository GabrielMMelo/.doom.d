;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; vars ;;
(defvar doom-dir "~/.doom.d/")

;; set paths ;;
(add-to-list 'load-path (concat doom-dir "custom/"))
(add-to-list 'load-path (concat doom-dir "custom/secrets/"))

;; org-mode ;;
(setq! org-agenda-files (file-expand-wildcards "~/org/*")) ;; to collect tasks from within subfolders

;; org-jira ;;
(require 'org-jira-conf nil 'noerror)

;; org-modern ;;
(with-eval-after-load 'org (global-org-modern-mode))

;; ejc-sql ;;
(require 'ejc-sql-conf nil 'noerror)
