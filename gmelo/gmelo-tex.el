;;; gmelo/gmelo-tex.el -*- lexical-binding: t; -*-

;; Add texbin to the PATH
(setenv "PATH" (concat (getenv "PATH") ":/Library/TeX/texbin/"))
(setq! exec-path (append exec-path '("/Library/TeX/texbin/")))

;; Enable tex document parsing
(setq! TeX-auto-save t)
(setq! TeX-parse-self t)

;; Enable multifile document structure (e.g. when using \include or \input)
(setq-default TeX-master nil)

;; Change latex to use pdflatex
(setq! latex-run-command "pdflatex")

(provide 'gmelo-tex)
