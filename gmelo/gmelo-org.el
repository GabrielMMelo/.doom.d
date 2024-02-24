;;; gmelo/gmelo-org.el -*- lexical-binding: t; -*-

;; org-mode ;;
(setq! org-agenda-files (file-expand-wildcards (concat org-dir "*"))) ;; to collect tasks from within subfolders
(setq! org-table-export-default-format "orgtbl-to-csv")
(setq! org-table-header-line-p t)

;; org-roam ;;
;(setq! org-roam-directory org-dir)
;(setq! org-roam-completion-everywhere t)
;;(org-roam-db-autosync-enable)

;; denote ;;
(setq! denote-directory org-dir)

;; org-modern ;;
(with-eval-after-load 'org (global-org-modern-mode))

;; org-pretty-table
(add-hook 'org-mode-hook (lambda () (org-pretty-table-mode)))

(provide 'gmelo-org)
