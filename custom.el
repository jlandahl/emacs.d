;;; -*- coding: utf-8-unix -*-
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(bbdb-always-add-addresses t)
 '(bbdb-auto-notes-alist (quote (("Organization" (".*" company 0 t)) ("Newsgroups" ("[^,]+" newsgroups 0 nil)) ("Subject" (".*" last-subj 0 t)) ("User-Agent" (".*" mailer 0 nil)) ("X-Mailer" (".*" mailer 0 nil)) ("X-Newsreader" (".*" mailer 0 nil)) ("X-Attribution" (".*" attribution 0 t)) ("X-Now-Playing" (".*" music 0 t)) ("X-Face" (".+" face 0 t)) ("Face" (".+" cface 0 t)))))
 '(bbdb-notice-hook (quote (bbdb-auto-notes-hook)))
 '(bbdb-user-mail-names "\\(jlandahl@\\(berkeley\\|ucsc\\)\\)\\|\\(john@landahl\\.org\\)")
 '(bbdb/mail-auto-create-p t)
 '(bbdb/news-auto-create-p t)
 '(blink-cursor-mode nil)
 '(bookmark-default-file "~/lib/emacs/emacs.bmk")
 '(browse-url-browser-function (quote browse-url-firefox))
 '(c-basic-offset 4)
 '(calendar-daylight-time-offset 60)
 '(calendar-daylight-time-zone-name "PDT")
 '(calendar-latitude 37.871786)
 '(calendar-location-name "Berkeley, CA")
 '(calendar-longitude -122.268305)
 '(calendar-standard-time-zone-name "PST")
 '(clean-buffer-list-delay-general 1)
 '(column-number-mode t)
 '(current-language-environment "UTF-8")
 '(diary-file "~/lib/diary")
 '(epa-file-cache-passphrase-for-symmetric-encryption t)
 '(epa-info-window-height 2)
 '(epa-popup-info-window nil)
 '(erc-track-exclude-types (quote ("JOIN" "NICK" "PART" "QUIT" "MODE" "333" "353")))
 '(fill-column 76)
 '(gnus-alias-default-identity "Berkeley")
 '(gnus-alias-identity-alist (quote (("Berkeley" "" "John Landahl <jlandahl@berkeley.edu>" "UC Berkeley" nil "" "~/.signature") ("UCSC" "" "John Landahl <jlandahl@ucsc.edu>" "UC Santa Cruz" nil "" "") ("landahl.org" "" "John Landahl <john@landahl.org>" "" nil "" ""))))
 '(gnus-article-sort-functions (quote ((not gnus-article-sort-by-number))))
 '(gnus-demon-handlers (quote ((gnus-demon-scan-mail 10 t))))
 '(gnus-gcc-mark-as-read t)
 '(gnus-group-line-format "%M%S%p%P%5y:%B%(%c%)%O
")
 '(gnus-group-uncollapsed-levels 2)
 '(gnus-inhibit-user-auto-expire nil)
 '(gnus-init-file "~/lib/emacs/dot-gnus.el")
 '(gnus-message-archive-group (quote (("Berkeley" "nnimap+Berkeley:Sent") ("UCSC" "nnimap+UCSC:Sent"))))
 '(gnus-parameters (quote (("^nnimap.*:[Ss]ent" (expiry-wait . never)) ("^nnimap.*Trash" (expiry-wait . 60) (expiry-target . delete)) ("nnimap\\+Berkeley.*" (expiry-wait . 14) (expiry-target . "nnimap+Berkeley:Trash")) ("^nnimap\\+UCSC.*" (expiry-target . "nnimap+UCSC:Trash")))))
 '(gnus-secondary-select-methods (quote ((nnimap "Berkeley" (nnimap-address "calmail.berkeley.edu") (nnimap-stream tls) (nnimap-authinfo-file "~/lib/emacs/authinfo.gpg") (nnir-search-engine imap)) (nnimap "UCSC" (nnimap-address "cruzmail.ucsc.edu") (nnimap-stream ssl) (nnimap-authinfo-file "~/lib/emacs/authinfo.gpg") (nnir-search-engine imap)))))
 '(gnus-select-method (quote (nnml "")))
 '(gnus-startup-file "~/lib/emacs/dot-newsrc")
 '(gnus-sum-thread-tree-false-root "")
 '(gnus-sum-thread-tree-indent " ")
 '(gnus-sum-thread-tree-leaf-with-other "├► ")
 '(gnus-sum-thread-tree-root "")
 '(gnus-sum-thread-tree-single-leaf "╰► ")
 '(gnus-sum-thread-tree-vertical "│")
 '(gnus-summary-display-while-building nil)
 '(gnus-summary-gather-subject-limit (quote fuzzy))
 '(gnus-summary-line-format "%U%R%z %(%-16,16&user-date; %-20,20f %uj %*%B%s%)
")
 '(gnus-summary-mode-hook (quote (nnmairix-summary-mode-hook gnus-agent-mode highline-local-on)))
 '(gnus-thread-sort-functions (quote ((not gnus-thread-sort-by-date))))
 '(gnus-total-expirable-newsgroups "^nnimap.*")
 '(gnus-update-message-archive-method t)
 '(ibuffer-formats (quote ((mark modified read-only " " (name 30 30 :left :elide) " " (size 9 -1 :right) " " (mode 16 16 :left :elide) " " filename-and-process) (mark " " (name 50 50 :left :elide) " " filename))))
 '(ido-mode (quote both) nil (ido))
 '(ispell-silently-savep t)
 '(jira-url "http://tools.myhottestfriends.net/jira/rpc/xmlrpc")
 '(mail-user-agent (quote gnus-user-agent))
 '(menu-bar-mode t)
 '(message-default-mail-headers "Cc: 
Bcc: 
")
 '(message-send-mail-function (quote smtpmail-send-it))
 '(midnight-mode t nil (midnight))
 '(nnmail-expiry-target "nnml:Expired")
 '(nnmail-expiry-wait 14)
 '(nnmail-extra-headers (quote (X-Diary-Time-Zone X-Diary-Dow X-Diary-Year X-Diary-Month X-Diary-Dom X-Diary-Hour X-Diary-Minute To Newsgroups Cc)))
 '(nnmail-split-methods (quote (("Calendar/inbox" "^\\(To\\|Cc\\):.*calagenda-admin@berkeley.edu"))))
 '(nxml-child-indent 4)
 '(nxml-outline-child-indent 4)
 '(org-agenda-custom-commands (quote (("w" "Work Agenda" ((agenda "" ((org-agenda-ndays 1) (org-agenda-files (quote ("~/lib/org/work/pureplay.org"))))) (tags-todo "WORK/-MAYBE" ((org-deadline-warning-days 1) (org-agenda-overriding-header "Work Tasks")))) nil ("work.ics")) ("p" "Personal Agenda" ((agenda "" ((org-agenda-ndays 1) (org-agenda-files (quote ("~/lib/org/personal"))))) (tags-todo "Personal" ((org-deadline-warning-days 1)))) nil ("personal.ics")) ("E" "Errands" tags "@errands" nil) ("S" "Started Tasks" todo "STARTED" ((org-agenda-todo-ignore-with-date nil))) ("W" "Tasks waiting on something" tags "WAITING" ((org-use-tag-inheritance nil))) ("i" "Inbox items to be filed" tags "INBOX" ((org-agenda-todo-ignore-with-date nil))) ("n" "Notes" tags "NOTE" nil) ("A" "Tasks to be archived" tags "LEVEL=2/DONE|CANCELLED" nil))))
 '(org-agenda-files (quote ("~/lib/org/work" "~/lib/org/personal" "~/lib/org/inbox.org")))
 '(org-agenda-include-diary t)
 '(org-agenda-restore-windows-after-quit t)
 '(org-agenda-skip-deadline-if-done t)
 '(org-agenda-skip-scheduled-if-done t)
 '(org-agenda-tags-todo-honor-ignore-options t)
 '(org-agenda-todo-list-sublevels nil)
 '(org-archive-mark-done nil)
 '(org-capture-templates (quote (("t" "Todo item to inbox" entry (file "~/lib/org/inbox.org") "* TODO %?
  %u
  %a") ("n" "note" entry (file "~/lib/org/inbox.org") "* %?                                              :NOTE:
  %u
  %a") ("p" "phone" entry (file "~/lib/org/inbox.org") "* PHONE %:name - %:company -                      :PHONE:
  Contact Info: %a
  %u
  :CLOCK-IN:
  %?") ("j" "Journal" entry (file+datetree "personal/journal.gpg") "* %T
  %?") ("w" "Web" entry (file "~/lib/org/inbox.org") "* %?
  %u, %c
  %i"))))
 '(org-clock-in-switch-to-state "STARTED")
 '(org-completion-use-ido t)
 '(org-cycle-include-plain-lists t)
 '(org-cycle-separator-lines 1)
 '(org-default-notes-file "~/lib/org/inbox.org")
 '(org-directory "~/lib/org")
 '(org-file-apps (quote ((auto-mode . emacs) ("\\.mm\\'" . default) ("\\.x?html?\\'" . default) ("\\.pdf\\'" . default) (directory . emacs))))
 '(org-hide-leading-stars t)
 '(org-icalendar-include-todo t)
 '(org-link-frame-setup (quote ((vm . vm-visit-folder-other-frame) (gnus . gnus-other-frame) (file . find-file))))
 '(org-log-done (quote time))
 '(org-log-into-drawer t)
 '(org-mobile-agendas (quote ("a" "w" "p" "E" "S" "W")))
 '(org-mobile-directory "~/My Dropbox/MobileOrg")
 '(org-mobile-inbox-for-pull "~/lib/org/from-mobile.org")
 '(org-modules (quote (org-bbdb org-bibtex org-crypt org-docview org-gnus org-info org-jsinfo org-habit org-irc org-mew org-mhe org-rmail org-vm org-wl org-w3m org-mouse org-learn org2rem org-screen org-track)))
 '(org-odd-levels-only t)
 '(org-outline-path-complete-in-steps t)
 '(org-refile-targets (quote ((org-agenda-files :maxlevel . 3) (nil :maxlevel . 3))))
 '(org-refile-use-outline-path (quote file))
 '(org-remember-clock-out-on-exit nil)
 '(org-remember-templates (quote (("todo" 116 "* TODO %?
  %u
  %a" nil bottom nil) ("note" 110 "* %?                                              :NOTE:
  %u
  %a" nil bottom nil) ("phone" 112 "* PHONE %:name - %:company -                      :PHONE:
  Contact Info: %a
  %u
  :CLOCK-IN:
  %?" nil bottom nil) ("Journal" 106 "* %T
  %?" "personal/journal.gpg" date-tree nil) ("Web" 119 "* %?
  %u, %c
  %i" nil bottom nil))))
 '(org-return-follows-link t)
 '(org-stuck-projects (quote ("+LEVEL=2/!-DONE-CANCELLED-OPEN-MAYBE-WAITING" nil ("NEXT" "NOTE") "")))
 '(org-tag-alist (quote (("URGENT" . 85) ("NEXT" . 110) ("PROJECT" . 80) ("Work" . 119) ("Personal" . 112) (:startgroup) ("@home" . 104) ("@office" . 111) ("@errands" . 101) (:endgroup) (:startgroup) ("@phone" . 111) ("@computer" . 67) (:endgroup))))
 '(org-todo-keyword-faces (quote (("TODO" :foreground "red" :weight "bold") ("STARTED" :foreground "blue" :weight "bold") ("DONE" :foreground "forestgreen" :weight "bold") ("WAITING" :foreground "orange" :weight "bold") ("MAYBE" :foreground "magenta" :weight "bold") ("CANCELLED" :foreground "forestgreen" :weight "bold") ("OPEN" :foreground "blue" :weight "bold"))))
 '(org-todo-keywords (quote ((sequence "TODO(t)" "STARTED(s!)" "|" "DONE(d!/!)" "CANCELLED(c@/!)") (sequence "WAITING(w@/!)" "MAYBE(m!)" "OPEN(O@)" "CANCELLED(c@/!)"))))
 '(org-todo-state-tags-triggers (quote (("CANCELLED" ("CANCELLED" . t)) ("WAITING" ("WAITING" . t)) (done ("NEXT") ("WAITING")) ("TODO" ("WAITING") ("CANCELLED")) ("STARTED" ("WAITING") ("NEXT" . t)))))
 '(read-mail-command (quote gnus))
 '(safe-local-variable-values (quote ((epa-file-encrypt-to ”john@landahl\.org”) (flyspell-highlight-flag) (ffip-regexp . ".*\\.groovy") (ffip-regexp . ".*\\.el"))))
 '(scroll-bar-mode (quote right))
 '(send-mail-function (quote smtpmail-send-it))
 '(smtpmail-auth-credentials "~/lib/emacs/authinfo.gpg")
 '(smtpmail-default-smtp-server "calmail.berkeley.edu")
 '(smtpmail-starttls-credentials (quote (("calmail.berkeley.edu" 25 nil nil))))
 '(tab-width 4)
 '(truncate-lines t)
 '(truncate-partial-width-windows nil)
 '(user-full-name "John Landahl")
 '(user-mail-address "jlandahl@berkeley.edu")
 '(vc-follow-symlinks t)
 '(w3m-cookie-accept-bad-cookies (quote ask))
 '(woman-manpath (quote ("/usr/man" "/usr/share/man" "/usr/local/man" "c:/cygwin/usr/man" "c:/cygwin/usr/share/man")))
 '(woman-use-own-frame nil)
 '(x-select-enable-clipboard t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(flyspell-duplicate ((t (:foreground "Gold3" :underline t :weight bold))))
 '(gnus-summary-cancelled ((t (:foreground "light gray"))))
 '(gnus-summary-normal-read ((((class color) (background light)) (:foreground "dim gray"))))
 '(gnus-summary-normal-ticked ((((class color) (background light)) (:foreground "blue"))))
 '(ido-first-match ((t (:foreground "blue" :weight bold))))
 '(ido-only-match ((((class color)) (:foreground "ForestGreen" :weight bold))))
 '(ido-subdir ((((min-colors 88) (class color)) (:foreground "goldenrod"))))
 '(org-document-title ((((class color) (background light)) (:foreground "midnight blue" :weight bold :height 1.2))))
 '(widget-field ((t (:background "lightgray")))))


















