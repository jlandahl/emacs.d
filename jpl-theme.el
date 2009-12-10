;;; -*- coding: utf-8-unix -*-

(deftheme jpl
  "Created 2009-11-24.")

(custom-theme-set-variables
 'jpl
 '(bbdb-always-add-addresses t)
 '(bbdb-always-add-addresses t)
 '(bbdb-auto-notes-alist (quote (("Organization" (".*" company 0 t)) ("Newsgroups" ("[^,]+" newsgroups 0 nil)) ("Subject" (".*" last-subj 0 t)) ("User-Agent" (".*" mailer 0 nil)) ("X-Mailer" (".*" mailer 0 nil)) ("X-Newsreader" (".*" mailer 0 nil)) ("X-Attribution" (".*" attribution 0 t)) ("X-Now-Playing" (".*" music 0 t)) ("X-Face" (".+" face 0 t)) ("Face" (".+" cface 0 t)))))
 '(bbdb-notice-hook (quote (bbdb-auto-notes-hook)))
 '(bbdb-user-mail-names "\\(jlandahl@\\(berkeley\\|ucsc\\)\\)\\|\\(john@landahl\\.org\\)")
 '(bbdb/mail-auto-create-p t)
 '(bbdb/news-auto-create-p t)
 '(gnus-alias-default-identity "Berkeley")
 '(gnus-alias-identity-alist (quote (("Berkeley" "" "John Landahl <jlandahl@berkeley.edu>" "UC Berkeley" nil "" "~/.signature-work") ("UCSC" "" "John Landahl <jlandahl@ucsc.edu>" "UC Santa Cruz" nil "" "") ("landahl.org" "" "John Landahl <john@landahl.org>" "" nil "" ""))))
 '(gnus-article-sort-functions (quote ((not gnus-article-sort-by-number))))
 '(gnus-demon-handlers (quote ((gnus-demon-scan-mail 10 t))))
 '(gnus-gcc-mark-as-read t)
 '(gnus-inhibit-user-auto-expire nil)
 '(gnus-message-archive-group (quote (("Berkeley" "nnimap+Berkeley:Sent") ("UCSC" "nnimap+UCSC:Sent"))))
 '(gnus-parameters (quote (("^nnimap.*:[Ss]ent" (expiry-wait . never)) ("^nnimap.*Trash" (expiry-wait . 60) (expiry-target . delete)) ("^nnimap\\+Berkeley:Calendar/inbox" (expiry-target . "nnimap+Berkeley:Calendar/archive")) ("^nnimap\\+Berkeley:Calendar/archive" (expiry-wait . 30) (expiry-target . "nnimap+Berkeley:Trash")) ("^nnimap\\+Berkeley.*" (expiry-wait . 14) (expiry-target . "nnimap+Berkeley:Trash")) ("^nnimap\\+UCSC.*" (expiry-target . "nnimap+UCSC:Trash")))))
 '(gnus-secondary-select-methods (quote ((nnimap "Berkeley" (nnimap-address "calmail.berkeley.edu") (nnimap-stream tls) (nnimap-authinfo-file "~/lib/emacs/authinfo.gpg") (nnir-search-engine imap)) (nnimap "UCSC" (nnimap-address "cruzmail.ucsc.edu") (nnimap-stream ssl) (nnimap-authinfo-file "~/lib/emacs/authinfo.gpg") (nnir-search-engine imap)))))
 '(gnus-select-method (quote (nnml "")))
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
 '(mail-user-agent (quote gnus-user-agent))
 '(message-default-mail-headers "Cc: 
Bcc: 
")
 '(message-send-mail-function (quote smtpmail-send-it))
 '(nnmail-expiry-target "nnml:Expired")
 '(nnmail-expiry-wait 14)
 '(read-mail-command (quote gnus))
 '(send-mail-function (quote smtpmail-send-it))
 '(smtpmail-auth-credentials "~/lib/emacs/authinfo.gpg")
 '(smtpmail-default-smtp-server "calmail.berkeley.edu")
 '(smtpmail-starttls-credentials (quote (("calmail.berkeley.edu" 25 nil nil))))
 '(tramp-default-proxies-alist (quote (("insure\\.lbl\\.gov" nil nil) ("calendar\\.lbl\\.gov" nil nil) ("\\.lbl\\.gov" nil "/ssh:jpl@insure.lbl.gov:"))))
 '(tramp-password-prompt-regexp "^.*\\([pP]assword\\|[pP]assphrase\\|[rR]esponse\\).*: ? *")
 '(tramp-remote-path (quote (tramp-own-remote-path tramp-default-remote-path "/usr/sbin" "/usr/local/bin" "/local/bin" "/local/freeware/bin" "/local/gnu/bin" "/usr/freeware/bin" "/usr/pkg/bin" "/usr/contrib/bin")))
 '(tramp-shell-prompt-pattern "^[^#$%>
]*[]#$%>] *\\(\\[[0-9;]*[a-zA-Z] *\\)*")

 )

(custom-theme-set-faces
 'jpl
 '(default ((t (:inherit nil :stipple nil :background "#ffffff" :foreground "#141312" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 111 :width normal :foundry "unknown" :family "DejaVu Sans Mono"))))
 ;;'(default ((t (:family "DejaVu Sans Mono" :foundry "unknown" :width normal :height 111 :weight normal :slant normal :underline nil :overline nil :strike-through nil :box nil :inverse-video nil :foreground "#141312" :background "#ffffff" :stipple nil :inherit nil))))
 )

(provide-theme 'jpl)
