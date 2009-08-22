;;; load-path for misc .el files
(add-to-list 'load-path "~/.emacs.d/vendor")

;;; remember-mode
(autoload 'remember "remember" nil t)
(define-key global-map [f8] 'remember)

;;; sorting for dired mode
(require 'dired)
(defvar dired-sort-map (make-sparse-keymap))
(define-key dired-mode-map "s" dired-sort-map)
(define-key dired-sort-map "s" (lambda () "sort by Size" (interactive) (dired-sort-other (concat dired-listing-switches "S"))))
(define-key dired-sort-map "x" (lambda () "sort by eXtension" (interactive) (dired-sort-other (concat dired-listing-switches "X"))))
(define-key dired-sort-map "t" (lambda () "sort by Time" (interactive) (dired-sort-other (concat dired-listing-switches "t"))))
(define-key dired-sort-map "n" (lambda () "sort by Name" (interactive) (dired-sort-other dired-listing-switches)))

;;; org-mode

(add-to-list 'load-path "~/.emacs.d/vendor/org-mode")
(add-hook 'org-mode-hook
	  (lambda ()
	    ;; yasnippet
	    (make-variable-buffer-local 'yas/trigger-key)
	    (setq yas/trigger-key [tab])
	    (define-key yas/keymap [tab] 'yas/next-field-group)
	    ;; flyspell mode to spell check everywhere
	    (flyspell-mode 1)))

(org-remember-insinuate)
(global-set-key (kbd "M-r") 'org-remember)

;; Start clock if a remember buffer includes :CLOCK-IN:
(add-hook 'remember-mode-hook 'my-start-clock-if-needed 'append)

(defun my-start-clock-if-needed ()
  (save-excursion
    (goto-char (point-min))
    (when (re-search-forward " *:CLOCK-IN: *" nil t)
      (replace-match "")
      (org-clock-in))))

;; mail integration

(add-hook 'mail-mode-hook 'turn-on-orgstruct)
(add-hook 'mail-mode-hook 'turn-on-orgstruct++)

(setq message-mode-hook
      (quote (orgstruct++-mode
	      (lambda nil (setq fill-column 72) (flyspell-mode 1))
	      turn-on-auto-fill
	      bbdb-define-all-aliases)))

;;; groovy-mode

(autoload 'groovy-mode "groovy-mode" "Groovy editing mode." t)
(add-to-list 'auto-mode-alist '("\.groovy$" . groovy-mode))
(add-to-list 'interpreter-mode-alist '("groovy" . groovy-mode))
