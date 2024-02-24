;; -*- no-byte-compile: t; -*-
;;; $DOOMDIR/packages.el

;; grammar check
;;(package! flycheck-grammarly)

;; formatting and autocompletion
(package! auto-complete)
(package! flx-ido) ;; for fuzzy completion

;; org mode packages
(package! org-modern)
(package! org-pretty-table
  :recipe (:host github :repo "Fuco1/org-pretty-table"))
;;(package! org-roam)
(package! denote)
(package! org-drill)

;; llm
;;(package! gptel)

;; media;;
(package! eradio)

;; external apps
;;(package! ejc-sql :disable t)
(package! ejc-sql
  :recipe (:local-repo "./packages/ejc-sql"))
;;(package! org-jira :disable (if IS-WINDOWS t))
;;(package! todoist)
