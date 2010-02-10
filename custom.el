;;; -*- coding: utf-8-unix -*-

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(bookmark-default-file "~/lib/emacs/emacs.bmk")
 '(column-number-mode t)
 '(current-language-environment "UTF-8")
 '(epa-file-cache-passphrase-for-symmetric-encryption t)
 '(epa-info-window-height 2)
 '(epa-popup-info-window nil)
 '(gnus-init-file "~/lib/emacs/dot-gnus.el")
 '(gnus-startup-file "~/lib/emacs/dot-newsrc")
 '(ido-mode (quote both) nil (ido))
 '(menu-bar-mode t)
 '(nxml-child-indent 4)
 '(nxml-outline-child-indent 4)
 '(org-agenda-custom-commands (quote (("w" "Work Agenda" ((agenda "" ((org-agenda-ndays 1) (org-agenda-files (quote ("~/lib/org/work"))))) (tags-todo "WORK/-SOMEDAY" ((org-deadline-warning-days 1) (org-agenda-overriding-header "Work Tasks")))) nil ("work.ics")) ("s" "Started Tasks" todo "STARTED" ((org-agenda-todo-ignore-with-date nil))) ("W" "Tasks waiting on something" tags "WAITING" ((org-use-tag-inheritance nil))) ("i" "Inbox items to be filed" tags "INBOX" ((org-agenda-todo-ignore-with-date nil))) ("n" "Notes" tags "NOTE" nil))))
 '(org-agenda-files (quote ("~/lib/org/work" "~/lib/org/personal" "~/lib/org/inbox.org")))
 '(org-agenda-restore-windows-after-quit t)
 '(org-agenda-skip-deadline-if-done t)
 '(org-agenda-skip-scheduled-if-done t)
 '(org-agenda-tags-todo-honor-ignore-options t)
 '(org-agenda-todo-list-sublevels nil)
 '(org-archive-mark-done nil)
 '(org-clock-in-switch-to-state "STARTED")
 '(org-completion-use-ido t)
 '(org-cycle-include-plain-lists t)
 '(org-default-notes-file "~/lib/org/inbox.org")
 '(org-directory "~/lib/org")
 '(org-hide-leading-stars t)
 '(org-icalendar-include-todo t)
 '(org-log-done (quote time))
 '(org-log-into-drawer t)
 '(org-mobile-directory "~/mnt/mydisk.se/org")
 '(org-mobile-inbox-for-pull "~/lib/org/from-mobile.org")
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
  %?" nil bottom nil))))
 '(org-return-follows-link t)
 '(org-stuck-projects (quote ("+LEVEL=2/!-DONE-CANCELLED-OPEN-SOMEDAY-WAITING" nil ("NEXT" "NOTE") "")))
 '(org-tag-alist (quote (("URGENT" . 85) ("NEXT" . 110) ("PROJECT" . 80) ("UCB" . 98) ("UCSC" . 117) ("LBL" . 108) ("CalendarSvc" . 99) (:startgroup) ("@home" . 104) ("@office" . 111) ("@errands" . 101) (:endgroup) (:startgroup) ("@phone" . 112) ("@computer" . 67) (:endgroup))))
 '(org-todo-keyword-faces (quote (("TODO" :foreground "red" :weight "bold") ("STARTED" :foreground "blue" :weight "bold") ("DONE" :foreground "forestgreen" :weight "bold") ("WAITING" :foreground "orange" :weight "bold") ("SOMEDAY" :foreground "magenta" :weight "bold") ("CANCELLED" :foreground "forestgreen" :weight "bold") ("OPEN" :foreground "blue" :weight "bold"))))
 '(org-todo-keywords (quote ((sequence "TODO(t)" "STARTED(s!)" "|" "DONE(d!/!)" "CANCELLED(c@/!)") (sequence "WAITING(w@/!)" "SOMEDAY(S!)" "OPEN(O@)" "CANCELLED(c@/!)"))))
 '(org-todo-state-tags-triggers (quote (("CANCELLED" ("CANCELLED" . t)) ("WAITING" ("WAITING" . t)) (done ("NEXT") ("WAITING")) ("TODO" ("WAITING") ("CANCELLED")) ("STARTED" ("WAITING") ("NEXT" . t)))))
 '(safe-local-variable-values (quote ((epa-file-encrypt-to ”john@landahl\.org”) (flyspell-highlight-flag) (ffip-regexp . ".*\\.groovy") (ffip-regexp . ".*\\.el"))))
 '(scroll-bar-mode (quote right))
 '(tab-width 4)
 '(truncate-lines t)
 '(truncate-partial-width-windows nil)
 '(user-full-name "John Landahl")
 '(user-mail-address "jlandahl@berkeley.edu")
 '(vc-follow-symlinks t)
 '(w3m-cookie-accept-bad-cookies (quote ask))
 '(x-select-enable-clipboard t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#ffffff" :foreground "#141312" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 111 :width normal :foundry "unknown" :family "DejaVu Sans Mono"))))
 '(flyspell-duplicate ((t (:foreground "Gold3" :underline t :weight bold))))
 '(gnus-summary-cancelled ((t (:foreground "light gray"))))
 '(gnus-summary-normal-read ((((class color) (background light)) (:foreground "dim gray"))))
 '(gnus-summary-normal-ticked ((((class color) (background light)) (:foreground "gold3"))))
 '(ido-first-match ((t (:foreground "blue" :weight bold))))
 '(ido-only-match ((((class color)) (:foreground "ForestGreen" :weight bold))))
 '(ido-subdir ((((min-colors 88) (class color)) (:foreground "goldenrod")))))
