(setq-default history-length 1000)
(setq-default prescient-history-length 1000)

(set-company-backend! '(text-mode
                        markdown-mode
                        gfm-mode)
  '(:seperate company-ispell
              company-files
              company-yasnippet))

(global-set-key (kbd "<f12>") 'emojify-insert-emoji)

(add-hook 'prog-mode-hook 'highlight-indent-guides-mode)

(beacon-mode 1)
(setq beacon-blink-when-focused 1)
(setq beacon-blink-when-window-scrolls 1)
(setq beacon-blink-when-point-moves-vertically 1)
(setq beacon-blink-when-point-moves-horizontally 1)
(setq beacon-push-mark 35)

(setq doom-theme 'doom-city-lights)

(setq doom-font (font-spec :family "Fira Code" :size 19))

(setq display-line-numbers-type 'relative)

(use-package! xkcd
  :commands (xkcd-get-json xkcd-download xkcd-get
             ;; now for funcs from my extension of this pkg
             +xkcd-find-and-copy +xkcd-find-and-view
             +xkcd-fetch-info +xkcd-select)
  :config
  (add-to-list 'evil-snipe-disabled-modes 'xkcd-mode)
  :general (:states 'normal
            :keymaps 'xkcd-mode-map
            "<right>" #'xkcd-next
            "n"       #'xkcd-next ; evil-ish
            "<left>"  #'xkcd-prev
            "N"       #'xkcd-prev ; evil-ish
            "r"       #'xkcd-rand
            "a"       #'xkcd-rand ; because image-rotate can interfere
            "t"       #'xkcd-alt-text
            "q"       #'xkcd-kill-buffer
            "o"       #'xkcd-open-browser
            "e"       #'xkcd-open-explanation-browser
            ;; extras
            "s"       #'+xkcd-find-and-view
            "/"       #'+xkcd-find-and-view
            "y"       #'+xkcd-copy))

(setq evil-vsplit-window-right t
      evil-split-window-below t)
(defadvice! prompt-for-buffer (&rest _)
  :after '(evil-window-split evil-window-vsplit)
  (+ivy/switch-buffer))
(setq +ivy-buffer-preview t)
(map! :map evil-window-map
      "SPC" #'rotate-layout)
