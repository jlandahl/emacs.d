;;;

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(gnus-select-method (quote (nnimap "Berkeley" (nnimap-address "calmail.berkeley.edu") (nnimap-stream tls) (nnimap-authinfo-file "~/lib/emacs/authinfo"))))
 '(ido-mode (quote both) nil (ido))
 '(menu-bar-mode t)
 '(org-agenda-files (quote ("~/lib/org/inbox.org" "~/lib/org/personal/personal.org" "~/lib/org/calendar-service.org" "~/lib/org/ucsc.org" "~/lib/org/ucb.org")))
 '(org-agenda-skip-deadline-if-done t)
 '(org-agenda-skip-scheduled-if-done t)
 '(org-agenda-todo-list-sublevels nil)
 '(org-clock-in-switch-to-state "STARTED")
 '(org-completion-use-ido t)
 '(org-cycle-include-plain-lists t)
 '(org-default-notes-file "~/lib/org/inbox.org")
 '(org-hide-leading-stars t)
 '(org-icalendar-include-todo t)
 '(org-log-done (quote time))
 '(org-odd-levels-only t)
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
 '(org-tag-alist (quote (("URGENT" . 117) ("PROJECT" . 80) (:startgroup) ("@home" . 104) ("@office" . 111) ("@errands" . 101) (:endgroup) (:startgroup) ("@phone" . 112) ("@computer" . 99) (:endgroup))))
 '(org-todo-keyword-faces (quote (("TODO" :foreground "red" :weight "bold") ("STARTED" :foreground "blue" :weight "bold") ("DONE" :foreground "forestgreen" :weight "bold") ("WAITING" :foreground "orange" :weight "bold") ("SOMEDAY" :foreground "magenta" :weight "bold") ("CANCELLED" :foreground "forestgreen" :weight "bold") ("OPEN" :foreground "blue" :weight "bold"))))
 '(org-todo-keywords (quote ((sequence "TODO(t)" "STARTED(s!)" "|" "DONE(d!/!)" "CANCELLED(c@/!)") (sequence "WAITING(w@/!)" "SOMEDAY(S!)" "OPEN(O@)" "CANCELLED(c@/!)"))))
 '(org-todo-state-tags-triggers (quote (("CANCELLED" ("CANCELLED" . t)) ("WAITING" ("WAITING" . t)) (done ("NEXT") ("WAITING")) ("TODO" ("WAITING") ("CANCELLED")) ("STARTED" ("WAITING") ("NEXT" . t)))))
 '(safe-local-variable-values (quote ((ffip-regexp . ".*\\.groovy") (ffip-regexp . ".*\\.el") (epa-file-encrypt-to ”john@landahl\.org”))))
 '(scroll-bar-mode (quote right))
 '(show-paren-mode t)
 '(tab-width 4)
 '(truncate-lines t)
 '(truncate-partial-width-windows nil))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#ffffff" :foreground "#141312" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 103 :width normal :foundry "unknown" :family "DejaVu Sans Mono")))))
