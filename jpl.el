(defun maybe-add-load-path (path)
  (when (file-accessible-directory-p path)
    (add-to-list 'load-path path)))

(defmacro with-library (feature &rest body)
  (declare (indent defun))
  `(when (require ,feature nil t)
     ,@body))

(server-start)

(setq windows (equal system-type 'windows-nt))
(setq unix    (not windows))

(when windows
  (setq ispell-program-name "aspell"
        tramp-default-method "plink"
        browse-url-firefox-program "c:/program files/mozilla firefox/firefox.exe"
        org-mobile-directory "w:/org"))

;;; load-path for misc .el files
(maybe-add-load-path "~/.emacs.d/vendor")

;;; colors, color-theme

;;(set-face-background 'hl-line "#111")

(maybe-add-load-path "~/.emacs.d/vendor/color-theme-6.6.0")
(with-library 'color-theme
  (require 'color-theme-autoloads "color-theme-autoloads")
  ;;(color-theme-comidia)
  )

;;; remember-mode
(autoload 'remember "remember" nil t)
(define-key global-map [f5] 'org-remember)

;;; anything.el, via anything-config.el
(with-library 'anything-config
  (define-key global-map [f8] 'anything)

  (setq anything-sources
        (list anything-c-source-buffers
              anything-c-source-file-name-history
              anything-c-source-info-pages
              anything-c-source-man-pages
              anything-c-source-file-cache
              anything-c-source-emacs-commands
              anything-c-source-bookmarks
              anything-c-source-google-suggest
              anything-c-source-locate)))

;;; sort bindings for dired mode
(require 'dired)
(defvar dired-sort-map (make-sparse-keymap))
(define-key dired-mode-map "s" dired-sort-map)
(define-key dired-sort-map "s" (lambda () "sort by Size" (interactive) (dired-sort-other (concat dired-listing-switches "S"))))
(define-key dired-sort-map "x" (lambda () "sort by eXtension" (interactive) (dired-sort-other (concat dired-listing-switches "X"))))
(define-key dired-sort-map "t" (lambda () "sort by Time" (interactive) (dired-sort-other (concat dired-listing-switches "t"))))
(define-key dired-sort-map "n" (lambda () "sort by Name" (interactive) (dired-sort-other dired-listing-switches)))

;; use dired-x
(add-hook 'dired-load-hook
          (lambda ()
            (load "dired-x")
            ;; Set dired-x global variables here.  For example:
            ;; (setq dired-guess-shell-gnutar "gtar")
            ;; (setq dired-x-hands-off-my-keys nil)
            ))

;;; add other possible paths to WoMAN's manpath
(loop for path in '("/usr/sfw/share/man" "/opt/csw/man" "/usr/local/man")
      when (file-accessible-directory-p path)
      do (add-to-list 'woman-manpath path))

;;; org-mode

(maybe-add-load-path "~/.emacs.d/vendor/org-mode/lisp")
(maybe-add-load-path "~/.emacs.d/vendor/org-mode/contrib/lisp")

(with-library 'org-install
  (add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
  (global-set-key "\C-cl" 'org-store-link)
  (global-set-key "\C-ca" 'org-agenda)
  (global-set-key "\C-cb" 'org-iswitchb)

  (require 'org-checklist)
  (require 'org-protocol)

  (add-hook 'org-mode-hook
            (lambda ()
              ;; yasnippet
              (make-variable-buffer-local 'yas/trigger-key)
              (setq yas/trigger-key [tab])
              (define-key yas/keymap [tab] 'yas/next-field-group)
              ;; flyspell mode to spell check everywhere
              ;;(flyspell-mode 1)
              ))

  (org-remember-insinuate)
  ;;(global-set-key (kbd "C-M-r") 'org-remember)
  (define-key global-map (kbd "C-M-r") 'org-remember)

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
                bbdb-define-all-aliases))))

;;; initialize session.el, for saving session state between runs

(with-library 'session
  (add-hook 'after-init-hook 'session-initialize))

;;; setup epg

;; apparently not necessary in Emacs 23
;; (with-library 'epa-file
;;   (epa-file-enable)
;;   )

;; From http://www.enigmacurry.com/2009/01/14/extending-emacs-with-advice/
;; force epg to ignore the GPG_AGENT_INFO environment variable, so
;; password prompts will happen in the minibuffer.
(defadvice epg--start (around advice-epg-disable-agent disable)
  "Make epg--start not able to find a gpg-agent"
  (let ((agent (getenv "GPG_AGENT_INFO")))
    (setenv "GPG_AGENT_INFO" nil)
    ad-do-it
    (setenv "GPG_AGENT_INFO" agent)))

;;; SLIME

;; (maybe-add-load-path "~/.emacs.d/vendor/slime-2009-07-29")
;; (with-library 'slime
;;   (setq inferior-lisp-program "sbcl")
;;   (slime-setup '(slime-asdf slime-fancy slime-tramp)))

;;; Groovy support

(when (locate-library "groovy-mode")
  (autoload 'groovy-mode "groovy-mode" "Groovy editing mode." t)
  (add-to-list 'auto-mode-alist '("\.groovy$" . groovy-mode))
  (add-to-list 'interpreter-mode-alist '("groovy" . groovy-mode))

  ;; workaround for a bug that will apparently next get fixed
  (setq groovy-block-mid-re nil)

  (autoload 'run-groovy "inf-groovy" "Run an inferior Groovy process")
  (autoload 'inf-groovy-keys "inf-groovy" "Set local key defs for inf-groovy in groovy-mode")

  (add-hook 'groovy-mode-hook
            '(lambda ()
               (inf-groovy-keys))))

;;; Python

(with-library 'python
 (add-hook 'python-mode-hook
           '(lambda ()
              (define-key python-mode-map "\C-m" 'newline-and-indent)))
  ;; ipython.el only works with python-mode.el
  ;; (with-library 'ipython
  ;;   ;;(setq ipython-command "/usr/local/bin/ipython")
  ;;   (setq py-python-command-args '("-colors" "LightBG")))
  )

;;; Javascript

(when (locate-library "js2-mode")
  (add-to-list 'auto-mode-alist '("\\.js$" . js2-mode)))

;;; setup yasnippet

(maybe-add-load-path "~/.emacs.d/vendor/yasnippet-0.5.10")
(with-library 'yasnippet
  (let* ((yasnippet-el (locate-library "yasnippet"))
         (yasnippet-dir (file-name-directory yasnippet-el)))
    (yas/initialize)
    (yas/load-directory (concat yasnippet-dir "snippets"))))

;;; automark

(when (require 'auto-mark nil t)
  (setq auto-mark-command-class-alist
        '((anything . anything)
          (goto-line . jump)
          (indent-for-tab-command . ignore)
          (undo . ignore)))
  (setq auto-mark-command-classifiers
        (list (lambda (command)
                (if (and (eq command 'self-insert-command)
                         (eq last-command-char ? ))
                    'ignore))))
  (global-auto-mark-mode 1))

;;; w3m

(maybe-add-load-path "~/.emacs.d/vendor/emacs-w3m")
(with-library 'w3m
  (setq browse-url-browser-function 'w3m-browse-url)
  (setq w3m-use-cookies t)
  ;;(autoload 'w3m-browse-url "w3m" "Ask a WWW browser to show a URL." t)
  (global-set-key "\C-xm" 'browse-url-at-point)

  (defun w3m-browse-current-buffer ()
    (interactive)
    (let ((filename (make-temp-file "w3m-" nil ".html")))
      (unwind-protect
          (progn
            (write-region (point-min) (point-max) filename)
            (w3m-find-file filename))
        (delete-file filename)))))

;; winner-mode, for automatic saving and easy restoring of window
;; configurations

(when (fboundp 'winner-mode)
  (winner-mode t))

;;; bbdb
(maybe-add-load-path "~/.emacs.d/vendor/bbdb-2.35/lisp")
(with-library 'bbdb
  ;; add to the Info path, if needed and possible
  (let* ((bbdb-code-path (file-name-directory (locate-library "bbdb")))
         (bbdb-info-path (expand-file-name (concat bbdb-code-path "../info"))))
    (when (file-accessible-directory-p bbdb-info-path)
      (setq Info-additional-directory-list (list bbdb-info-path))))

  (bbdb-initialize 'gnus 'message)
  (when (require 'message nil t)
    (bbdb-insinuate-message))

  (add-hook 'message-setup-hook 'bbdb-define-all-aliases)
  (setq bbdb-default-country "US"))

;;; Misc functions

;; from http://www.emacswiki.org/emacs/SwitchToGnus
(defun switch-to-gnus (&optional arg)
  "Switch to a Gnus related buffer.
   Candidates are buffers starting with *mail or *reply or *wide
   reply *Summary or *Group*

   Use a prefix argument to start Gnus if no candidate exists."
  (interactive "P")
  (let (candidate
        (alist '(("^\\*\\(mail\\|\\(wide \\)?reply\\)" t)
                 ("^\\*Group")
                 ("^\\*Summary")
                 ("^\\*Article" nil (lambda ()
                                      (buffer-live-p gnus-article-current-summary))))))
    (catch 'none-found
      (dolist (item alist)
        (let (last
              (regexp (nth 0 item))
              (optional (nth 1 item))
              (test (nth 2 item)))
          (dolist (buf (buffer-list))
            (when (and (string-match regexp (buffer-name buf))
                       (> (buffer-size buf) 0))
              (setq last buf)))
          (cond ((and last (or (not test) (funcall test)))
                 (setq candidate last))
                (optional
                 nil)
                (t
                 (throw 'none-found t))))))
    (cond (candidate
           (switch-to-buffer candidate))
          (arg
           (gnus))
          (t
           (error "No candidate found")))))
(global-set-key (kbd "C-c n") 'switch-to-gnus)
