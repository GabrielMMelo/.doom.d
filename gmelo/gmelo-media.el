;;; gmelo/gmelo-media.el -*- lexical-binding: t; -*-

;; eradio ;;
(use-package! eradio
  :init
  (setq! eradio-player '("mpv" "--no-video" "--no-terminal"))
  :config
  ;;TODO: need to map keymaps
  (setq! eradio-channels '(("Radio - Brazilian Pagode 90s" . "https://zeno.fm/radio/pagode-90-pagode-antigo-e-samba/")
                           ("Radio - Brazilian Rock 80s, 90s, 00s" . "https://zeno.fm/radio/silei_rock-brasil-80-e-90/")
                           ("Radio - Brazilian Sertanejo" . "https://zeno.fm/radio/sertaneja-fm/")
                           ("Radio - Brazilian Brega" . "https://zeno.fm/radio/radio-classico-do-brega/")
                           ("Radio - MPB" . "https://zeno.fm/radio/musicapopularbrasileira/")
                           ("Radio - Brazilian Forro" . "https://zeno.fm/radio/radio-forro-antigas/"))))

(provide 'gmelo-media)
