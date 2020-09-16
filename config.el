(global-set-key (kbd "<f12>") 'emojify-insert-emoji)

(add-hook 'prog-mode-hook 'highlight-indent-guides-mode)

;; (setq doom-theme 'doom-city-lights)
(setq doom-theme 'doom-nord)

 (set-frame-parameter (selected-frame) 'alpha '(80 . 50))
 ;; (add-to-list 'default-frame-alist '(alpha . (95 . 50)))

(setq doom-font (font-spec :family "Monoid NF" :size 18))

(setq display-line-numbers-type 'relative)

(require 'engine-mode)
(engine-mode t)
(defengine duckduckgo
  "https://duckduckgo.com/?q=%s"
  :keybinding "d")

(defengine github
  "https://github.com/search?ref=simplesearch&q=%s")

(defengine google
  "http://www.google.com/search?ie=utf-8&oe=utf-8&q=%s"
  :keybinding "g")

(defengine google-images
  "http://www.google.com/images?hl=en&source=hp&biw=1440&bih=795&gbv=2&aq=f&aqi=&aql=&oq=&q=%s")

(defengine google-maps
  "http://maps.google.com/maps?q=%s"
  :docstring "Mappin' it up.")

(defengine stack-overflow
  "https://stackoverflow.com/search?q=%s")

(defengine wikipedia
  "http://www.wikipedia.org/search-redirect.php?language=en&go=Go&search=%s"
  :keybinding "w"
  :docstring "Searchin' the wikis.")

(defengine wiktionary
  "https://www.wikipedia.org/search-redirect.php?family=wiktionary&language=en&go=Go&search=%s")

(defengine wolfram-alpha
  "http://www.wolframalpha.com/input/?i=%s")

(defengine youtube
  "http://www.youtube.com/results?aq=f&oq=&search_query=%s")

(setq org-journal-dir "~/Dropbox/Logs/")
(setq org-journal-date-format "%A, %d %B %Y")
(setq org-journal-file-type "weekly")
(setq org-journal-file-format "%Y%m.org")
(setq org-journal-enable-agenda-integration t)
(map! :leader
      (:prefix-map ("a" . "applications")
       (:prefix ("j" . "journal")
        :desc "New journal entry" "j" #'org-journal-new-entry
        :desc "Search journal entry" "s" #'org-journal-search)))

(require 'org-journal)

(add-hook 'vue-mode-hook #'lsp!)
