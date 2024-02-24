;;; gmelo/gmelo-llm.el -*- lexical-binding: t; -*-

(setq! gptel-log-level 'info)
(setq-default gptel-backend (gptel-make-ollama "Ollama"
  :host "localhost:11434"
  :stream t
  :models '("llama2:latest")))

(provide 'gmelo-llm)
