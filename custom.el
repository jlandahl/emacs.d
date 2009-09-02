;;;

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(bbdb/mail-auto-create-p (quote prompt))
 '(bbdb/news-auto-create-p (quote prompt))
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(current-language-environment "UTF-8")
 '(gnus-gcc-mark-as-read t)
 '(gnus-message-archive-group (quote (("Berkeley" "nnimap+Berkeley:Sent") ("UCSC" "nnimap+UCSC:Sent"))))
 '(gnus-secondary-select-methods (quote ((nnimap "Berkeley" (nnimap-address "calmail.berkeley.edu") (nnimap-stream tls) (nnimap-authinfo-file "~/lib/emacs/authinfo.gpg") (nnir-search-engine imap)) (nnimap "UCSC" (nnimap-address "cruzmail.ucsc.edu") (nnimap-stream ssl) (nnimap-authinfo-file "~/lib/emacs/authinfo.gpg") (nnir-search-engine imap)))))
 '(gnus-select-method (quote (nnml "")))
 '(gnus-sum-thread-tree-false-root "")
 '(gnus-sum-thread-tree-indent " ")
 '(gnus-sum-thread-tree-leaf-with-other "├► ")
 '(gnus-sum-thread-tree-root "")
 '(gnus-sum-thread-tree-single-leaf "╰► ")
 '(gnus-sum-thread-tree-vertical "│")
 '(gnus-summary-line-format "%U%R%z %(%&user-date;  %-15,15f %* %B%s%)
")
 '(gnus-update-message-archive-method t)
 '(ido-mode (quote both) nil (ido))
 '(mail-user-agent (quote gnus-user-agent))
 '(menu-bar-mode t)
 '(message-default-mail-headers "Cc: 
Bcc: 
")
 '(message-send-mail-function (quote smtpmail-send-it))
 '(org-agenda-custom-commands (quote (("w" "Work Agenda" ((agenda "" ((org-agenda-ndays 1) (org-agenda-files (quote ("~/lib/org/work.org"))))) (tags-todo "WORK/-SOMEDAY" ((org-deadline-warning-days 1) (org-agenda-overriding-header "Work Tasks")))) nil ("work.ics")) ("s" "Started Tasks" todo "STARTED" ((org-agenda-todo-ignore-with-date nil))) ("W" "Tasks waiting on something" tags "WAITING" ((org-use-tag-inheritance nil))) ("i" "Inbox items to be filed" tags "INBOX" ((org-agenda-todo-ignore-with-date nil))) ("n" "Notes" tags "NOTE" nil))))
 '(org-agenda-files (quote ("~/lib/org/inbox.org" "~/lib/org/personal" "~/lib/org/work")))
 '(org-agenda-restore-windows-after-quit t)
 '(org-agenda-skip-deadline-if-done t)
 '(org-agenda-skip-scheduled-if-done t)
 '(org-agenda-tags-todo-honor-ignore-options t)
 '(org-agenda-todo-list-sublevels nil)
 '(org-clock-in-switch-to-state "STARTED")
 '(org-completion-use-ido t)
 '(org-cycle-include-plain-lists t)
 '(org-default-notes-file "~/lib/org/inbox.org")
 '(org-directory "~/lib/org")
 '(org-hide-leading-stars t)
 '(org-icalendar-include-todo t)
 '(org-log-done (quote time))
 '(org-log-into-drawer t)
 '(org-odd-levels-only t)
 '(org-refile-targets (quote ((org-agenda-files :maxlevel . 5) (nil :maxlevel . 5))))
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
  %?" nil bottom nil))))
 '(org-return-follows-link t)
 '(org-stuck-projects (quote ("+LEVEL=2/!-DONE-CANCELLED-OPEN-SOMEDAY-WAITING" nil ("NEXT" "NOTE") "")))
 '(org-tag-alist (quote (("URGENT" . 117) ("NEXT" . 110) ("PROJECT" . 80) (:startgroup) ("@home" . 104) ("@office" . 111) ("@errands" . 101) (:endgroup) (:startgroup) ("@phone" . 112) ("@computer" . 99) (:endgroup))))
 '(org-todo-keyword-faces (quote (("TODO" :foreground "red" :weight "bold") ("STARTED" :foreground "blue" :weight "bold") ("DONE" :foreground "forestgreen" :weight "bold") ("WAITING" :foreground "orange" :weight "bold") ("SOMEDAY" :foreground "magenta" :weight "bold") ("CANCELLED" :foreground "forestgreen" :weight "bold") ("OPEN" :foreground "blue" :weight "bold"))))
 '(org-todo-keywords (quote ((sequence "TODO(t)" "STARTED(s!)" "|" "DONE(d!/!)" "CANCELLED(c@/!)") (sequence "WAITING(w@/!)" "SOMEDAY(S!)" "OPEN(O@)" "CANCELLED(c@/!)"))))
 '(org-todo-state-tags-triggers (quote (("CANCELLED" ("CANCELLED" . t)) ("WAITING" ("WAITING" . t)) (done ("NEXT") ("WAITING")) ("TODO" ("WAITING") ("CANCELLED")) ("STARTED" ("WAITING") ("NEXT" . t)))))
 '(safe-local-variable-values (quote ((ffip-regexp . ".*\\.groovy") (ffip-regexp . ".*\\.el") (epa-file-encrypt-to ”john@landahl\.org”))))
 '(scroll-bar-mode (quote right))
 '(send-mail-function (quote smtpmail-send-it))
 '(show-paren-mode t)
 '(smtpmail-auth-credentials "~/lib/emacs/authinfo.gpg")
 '(smtpmail-default-smtp-server "calmail.berkeley.edu")
 '(smtpmail-starttls-credentials (quote (("calmail.berkeley.edu" 25 nil nil))))
 '(tab-width 4)
 '(truncate-lines t)
 '(truncate-partial-width-windows nil)
 '(user-full-name "John Landahl")
 '(user-mail-address "jlandahl@berkeley.edu"))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#ffffff" :foreground "#141312" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 111 :width normal :foundry "unknown" :family "DejaVu Sans Mono")))))
