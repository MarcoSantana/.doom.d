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
 (set-frame-parameter (selected-frame) 'alpha '(90 . 50))
 (add-to-list 'default-frame-alist '(alpha . (85 . 50)))

(setq doom-font (font-spec :family "Fira Code" :size 19))

(setq display-line-numbers-type 'relative)

(setq org-journal-dir "~/Dropbox/Logs/")
(setq org-journal-date-format "%A, %d %B %Y")
(setq org-journal-file-type "weekly")
(setq org-journal-file-format "%Y%m%W.org")
(setq org-journal-enable-agenda-integration t)

(defun org-journal-file-header-func (time)
  "Custom function to create journal header."
  (concat
    (pcase org-journal-file-type
      (`daily "#+TITLE: Daily Journal\n#+STARTUP: showeverything")
      (`weekly "#+TITLE: Weekly Journal\n#+STARTUP: folded")
      (`monthly "#+TITLE: Monthly Journal\n#+STARTUP: folded")
      (`yearly "#+TITLE: Yearly Journal\n#+STARTUP: folded"))))

(setq org-journal-file-header 'org-journal-file-header-func)

(defun org-journal-save-entry-and-exit()
  "Simple convenience function.
  Saves the buffer of the current day's entry and kills the window
  Similar to org-capture like behavior"
  (interactive)
  (save-buffer)
  (kill-buffer-and-window))
(define-key org-journal-mode-map (kbd "C-x C-s") 'org-journal-save-entry-and-exit)

(require 'org-journal)
