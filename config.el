(global-set-key (kbd "<f12>") 'emojify-insert-emoji)

(add-hook 'prog-mode-hook 'highlight-indent-guides-mode)

(beacon-mode 1)
(setq beacon-blink-when-focused 1)
(setq beacon-blink-when-window-scrolls 1)
(setq beacon-blink-when-point-moves-vertically 1)
(setq beacon-blink-when-point-moves-horizontally 1)
(setq beacon-push-mark 35)

(setq doom-theme 'doom-city-lights)

 ;;(set-frame-parameter (selected-frame) 'alpha '(<active> . <inactive>))
 ;;(set-frame-parameter (selected-frame) 'alpha <both>)
 (set-frame-parameter (selected-frame) 'alpha '(85 . 50))
 (add-to-list 'default-frame-alist '(alpha . (85 . 50)))

(setq doom-font (font-spec :family "Fira Code" :size 19))

(setq display-line-numbers-type 'relative)

(setq org-journal-dir "~/Dropbox/Logs/")
(setq org-journal-date-format "%A, %d %B %Y")
(require 'org-journal)
