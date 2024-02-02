;; -*- no-byte-compile: t; -*-
;;; $DOOMDIR/packages.el

;; formatting and autocompletion
(package! auto-complete)
(package! flx-ido) ;; for fuzzy completion

;; org mode packages
(package! org-modern)
(package! org-pretty-table
  :recipe (:host github :repo "Fuco1/org-pretty-table"))
(package! org-roam)

;; media;;
(package! eradio)

;; external apps
;;(package! ejc-sql :disable t)
(package! ejc-sql
  :recipe (:local-repo "./packages/ejc-sql"))
(package! org-jira :disable (if IS-WINDOWS t))
