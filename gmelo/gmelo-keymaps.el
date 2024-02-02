;;; gmelo/gmelo-keymaps.el -*- lexical-binding: t; -*-

;; Keymaps :)
(map!
  ;; SPC r
  (:leader
   (:after eradio
      :desc "Toggle Eradio" :n "r t" #'eradio-toggle
      :desc "Play Eradio" :n "r p" #'eradio-play
      :desc "Stop Eradio" :n "r s" #'eradio-stop)
   ;(:after org
   ;   :desc "Something else from other package" :n "r d" #'somefunction)
   )

  ;; org
  (:after org
   :map org-mode-map
      "C-c <tab>" #'org-table-toggle-column-width)

  ;; treemacs
  ;; kIt should be used
  ;; to map something that you want nothing else to override
  (:map 'override
        "<M-tab>" #'treemacs))


;; evil navigation mapping ;;
;; In evil, the vim modes (e.g., normal, visual, insert, etc) are known
;; as states.
(evil-define-key '(normal visual) 'global "L" #'evil-end-of-line)
(evil-define-key '(normal visual) 'global "H" #'evil-beginning-of-line)

(provide 'gmelo-keymaps)
