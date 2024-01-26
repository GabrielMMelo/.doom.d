;;; custom/ejc-sql-config.el -*- lexical-binding: t; -*-

(require 'ejc-sql)

;; Require completion frontend (autocomplete or company). One of them or both.
(require 'ejc-autocomplete)
(require 'ejc-company)

(setq nrepl-sync-request-timeout 60)
(setq clomacs-httpd-default-port 8090) ; Use a port other than 8080.
;; Allow use any CIDER nREPL not only library dedicated nREPL
;; (setq clomacs-allow-other-repl t)

;; Show results of SQL snippets evaluation in `org-mode'
;; in dedicated buffer.
(setq ejc-org-mode-show-results t)
(setq ejc-complete-on-dot t)
(setq ejc-use-flx t)                          ; Enable `flx' fuzzy matching.
(setq ejc-completion-system 'standard)
(setq ejc-result-table-impl 'ejc-result-mode) ; Set major-mode for results.
;; (setq ejc-result-table-impl 'orgtbl-mode)  ; Default major-mode for results.

(defun k/ejc-after-emacs-init-hook ()
  (push 'ejc-company-backend company-backends)
  ;; In case of `company-mode' is used by default this can be useful:
  ;; (company-quickhelp-mode)
  )

(add-hook 'after-init-hook 'k/ejc-after-emacs-init-hook)

(defun k/sql-mode-hook ()
  (ejc-sql-mode t))

(add-hook 'sql-mode-hook 'k/sql-mode-hook)

(defun k/ejc-result-mode-hook ()
  (display-line-numbers-mode))

(add-hook 'ejc-result-mode-hook 'k/ejc-result-mode-hook)

(defun k/ejc-sql-mode-hook ()
  ;; Enable one of the completion frontend by by default but not both.
  (auto-complete-mode t) ; Enable `auto-complete-mode'
  (ejc-ac-setup)
  ;;(company-mode t)    ; or `company-mode'.
  ;;(ejc-eldoc-setup)      ; Setup ElDoc.
  (electric-pair-mode))

(add-hook 'ejc-sql-minor-mode-hook 'k/ejc-sql-mode-hook)

(defun k/ejc-sql-connected-hook ()
  (ejc-set-fetch-size 99)         ; Limit for the number of records to output.
  (ejc-set-max-rows 99)           ; Limit for the number of records in ResultSet.
  (ejc-set-show-too-many-rows-message t) ; Set output 'Too many rows' message.
  (ejc-set-column-width-limit 25) ; Limit for outputing the number of chars per column.
  (ejc-set-use-unicode t)         ; Use unicode symbols for grid borders.
  )

(add-hook 'ejc-sql-connected-hook 'k/ejc-sql-connected-hook)

(require 'ejc-sql-databases nil 'noerror)

(provide 'ejc-sql-conf)
