(setq-default history-length 1000)
(setq-default prescient-history-length 1000)

(set-company-backend! '(text-mode
                        markdown-mode
                        gfm-mode)
  '(:seperate company-ispell
              company-files
              company-yasnippet))
