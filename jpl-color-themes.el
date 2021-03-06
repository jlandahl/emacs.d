(eval-when-compile
  (require 'color-theme))

(defun color-theme-jpl-standard ()
  "Based on color-theme-standard"
  (interactive)
  ;; Note that some of the things that make up a color theme are
  ;; actually variable settings!
  (color-theme-install
   '(color-theme-jpl-standard
     ((foreground-color . "gray20")
      (background-color . "white")
      (mouse-color . "gray20")
      (cursor-color . "gray20")
      (border-color . "gray20")
      (background-mode . light))
     ((Man-overstrike-face . bold)
      (Man-underline-face . underline)
      (apropos-keybinding-face . underline)
      (apropos-label-face . italic)
      (apropos-match-face . secondary-selection)
      (apropos-property-face . bold-italic)
      (apropos-symbol-face . bold)
      (goto-address-mail-face . italic)
      (goto-address-mail-mouse-face . secondary-selection)
      (goto-address-url-face . bold)
      (goto-address-url-mouse-face . highlight)
      (help-highlight-face . underline)
      (list-matching-lines-face . bold)
      (view-highlight-face . highlight))
     (default ((t (nil))))
     (bold ((t (:bold t))))
     (bold-italic ((t (:bold t :italic t))))
     (calendar-today-face ((t (:underline t))))
     (cperl-array-face ((t (:foreground "Blue" :background "lightyellow2" :bold t))))
     (cperl-hash-face ((t (:foreground "Red" :background "lightyellow2" :bold t :italic t))))
     (cperl-nonoverridable-face ((t (:foreground "chartreuse3"))))
     (custom-button-face ((t (nil))))
     (custom-changed-face ((t (:foreground "white" :background "blue"))))
     (custom-documentation-face ((t (nil))))
     (custom-face-tag-face ((t (:underline t))))
     (custom-group-tag-face ((t (:foreground "blue" :underline t))))
     (custom-group-tag-face-1 ((t (:foreground "red" :underline t))))
     (custom-invalid-face ((t (:foreground "yellow" :background "red"))))
     (custom-modified-face ((t (:foreground "white" :background "blue"))))
     (custom-rogue-face ((t (:foreground "pink" :background "black"))))
     (custom-saved-face ((t (:underline t))))
     (custom-set-face ((t (:foreground "blue" :background "white"))))
     (custom-state-face ((t (:foreground "dark green"))))
     (custom-variable-button-face ((t (:bold t :underline t))))
     (custom-variable-tag-face ((t (:foreground "blue" :underline t))))
     (diary-face ((t (:foreground "red"))))
     (diredp-date-time ((t (:background "gray94"))))
     (diredp-dir-heading ((t (:foreground "Blue" :underline "gray50"))))
     (diredp-dir-priv ((t (:foreground "Blue"))))
     (diredp-exec-priv ((t nil)))
     (diredp-file-name ((t nil)))
     (diredp-file-suffix ((t (:foreground "Gray25"))))
     (diredp-ignored-file-name ((t (:foreground "darkslategray4"))))
     (diredp-link-priv ((t nil)))
     (diredp-no-priv ((t nil)))
     (diredp-number ((t (:foreground "darkgreen"))))
     (diredp-read-priv ((t nil)))
     (diredp-symlink ((t (:foreground "darkorange4"))))
     (diredp-write-priv ((t (:weight bold))))
     (ediff-current-diff-face-A ((t (:foreground "firebrick" :background "pale green"))))
     (ediff-current-diff-face-Ancestor ((t (:foreground "Black" :background "VioletRed"))))
     (ediff-current-diff-face-B ((t (:foreground "DarkOrchid" :background "Yellow"))))
     (ediff-current-diff-face-C ((t (:foreground "Navy" :background "Pink"))))
     (ediff-even-diff-face-A ((t (:foreground "Black" :background "light grey"))))
     (ediff-even-diff-face-Ancestor ((t (:foreground "White" :background "Grey"))))
     (ediff-even-diff-face-B ((t (:foreground "White" :background "Grey"))))
     (ediff-even-diff-face-C ((t (:foreground "Black" :background "light grey"))))
     (ediff-fine-diff-face-A ((t (:foreground "Navy" :background "sky blue"))))
     (ediff-fine-diff-face-Ancestor ((t (:foreground "Black" :background "Green"))))
     (ediff-fine-diff-face-B ((t (:foreground "Black" :background "cyan"))))
     (ediff-fine-diff-face-C ((t (:foreground "Black" :background "Turquoise"))))
     (ediff-odd-diff-face-A ((t (:foreground "White" :background "Grey"))))
     (ediff-odd-diff-face-Ancestor ((t (:foreground "Black" :background "light grey"))))
     (ediff-odd-diff-face-B ((t (:foreground "Black" :background "light grey"))))
     (ediff-odd-diff-face-C ((t (:foreground "White" :background "Grey"))))
     (eshell-ls-archive-face ((t (:foreground "Orchid" :bold t))))
     (eshell-ls-backup-face ((t (:foreground "OrangeRed"))))
     (eshell-ls-clutter-face ((t (:foreground "OrangeRed" :bold t))))
     (eshell-ls-directory-face ((t (:foreground "Blue" :bold t))))
     (eshell-ls-executable-face ((t (:foreground "ForestGreen" :bold t))))
     (eshell-ls-missing-face ((t (:foreground "Red" :bold t))))
     (eshell-ls-product-face ((t (:foreground "OrangeRed"))))
     (eshell-ls-readonly-face ((t (:foreground "Brown"))))
     (eshell-ls-special-face ((t (:foreground "Magenta" :bold t))))
     (eshell-ls-symlink-face ((t (:foreground "DarkCyan" :bold t))))
     (eshell-ls-unreadable-face ((t (:foreground "Grey30"))))
     (eshell-prompt-face ((t (:foreground "Red" :bold t))))
     (eshell-test-failed-face ((t (:foreground "OrangeRed" :bold t))))
     (eshell-test-ok-face ((t (:foreground "Green" :bold t))))
     (excerpt ((t (:italic t))))
     (fixed ((t (:bold t))))
     (flyspell-duplicate-face ((t (:foreground "Gold3" :bold t :underline t))))
     (flyspell-incorrect-face ((t (:foreground "OrangeRed" :bold t :underline t))))

     (font-lock-builtin-face ((t (:foreground "DarkOrchid3"))))
     (font-lock-constant-face ((t (:foreground "RoyalBlue"))))
     (font-lock-comment-face ((t (:foreground "gray40"))))
     (font-lock-function-name-face ((t (:foreground "Blue"))))
     (font-lock-keyword-face ((t (:foreground "gray20" :bold t))))
     (font-lock-string-face ((t (:foreground "dark goldenrod"))))
     (font-lock-type-face ((t (:foreground "red"))))
     (font-lock-variable-name-face ((t (:foreground "green4"))))
     (font-lock-warning-face ((t (:foreground "Red" :bold t))))

     (fringe ((t (:background "grey95"))))
     (gnus-cite-attribution-face ((t (:italic t))))
     (gnus-cite-face-1 ((t (:foreground "MidnightBlue"))))
     (gnus-cite-face-10 ((t (:foreground "medium purple"))))
     (gnus-cite-face-11 ((t (:foreground "turquoise"))))
     (gnus-cite-face-2 ((t (:foreground "firebrick"))))
     (gnus-cite-face-3 ((t (:foreground "dark green"))))
     (gnus-cite-face-4 ((t (:foreground "OrangeRed"))))
     (gnus-cite-face-5 ((t (:foreground "dark khaki"))))
     (gnus-cite-face-6 ((t (:foreground "dark violet"))))
     (gnus-cite-face-7 ((t (:foreground "SteelBlue4"))))
     (gnus-cite-face-8 ((t (:foreground "magenta"))))
     (gnus-cite-face-9 ((t (:foreground "violet"))))
     (gnus-emphasis-bold ((t (:bold t))))
     (gnus-emphasis-bold-italic ((t (:bold t :italic t))))
     (gnus-emphasis-italic ((t (:italic t))))
     (gnus-emphasis-underline ((t (:underline t))))
     (gnus-emphasis-underline-bold ((t (:bold t :underline t))))
     (gnus-emphasis-underline-bold-italic ((t (:bold t :italic t :underline t))))
     (gnus-emphasis-underline-italic ((t (:italic t :underline t))))
     (gnus-group-mail-1-empty-face ((t (:foreground "DeepPink3"))))
     (gnus-group-mail-1-face ((t (:foreground "DeepPink3" :bold t))))
     (gnus-group-mail-2-empty-face ((t (:foreground "HotPink3"))))
     (gnus-group-mail-2-face ((t (:foreground "HotPink3" :bold t))))
     (gnus-group-mail-3-empty-face ((t (:foreground "magenta4"))))
     (gnus-group-mail-3-face ((t (:foreground "magenta4" :bold t))))
     (gnus-group-mail-low-empty-face ((t (:foreground "DeepPink4"))))
     (gnus-group-mail-low-face ((t (:foreground "DeepPink4" :bold t))))
     (gnus-group-news-1-empty-face ((t (:foreground "ForestGreen"))))
     (gnus-group-news-1-face ((t (:foreground "ForestGreen" :bold t))))
     (gnus-group-news-2-empty-face ((t (:foreground "CadetBlue4"))))
     (gnus-group-news-2-face ((t (:foreground "CadetBlue4" :bold t))))
     (gnus-group-news-3-empty-face ((t (nil))))
     (gnus-group-news-3-face ((t (:bold t))))
     (gnus-group-news-low-empty-face ((t (:foreground "DarkGreen"))))
     (gnus-group-news-low-face ((t (:foreground "DarkGreen" :bold t))))
     (gnus-header-content-face ((t (:foreground "indianred4" :italic t))))
     (gnus-header-from-face ((t (:foreground "red3"))))
     (gnus-header-name-face ((t (:foreground "maroon"))))
     (gnus-header-newsgroups-face ((t (:foreground "MidnightBlue" :italic t))))
     (gnus-header-subject-face ((t (:foreground "red4"))))
     (gnus-signature-face ((t (:italic t))))
     (gnus-splash-face ((t (:foreground "ForestGreen"))))
     (gnus-summary-cancelled-face ((t (:foreground "yellow" :background "black"))))
     (gnus-summary-high-ancient-face ((t (:foreground "RoyalBlue" :bold t))))
     (gnus-summary-high-read-face ((t (:foreground "DarkGreen" :bold t))))
     (gnus-summary-high-ticked-face ((t (:foreground "firebrick" :bold t))))
     (gnus-summary-high-unread-face ((t (:bold t))))
     (gnus-summary-low-ancient-face ((t (:foreground "RoyalBlue" :italic t))))
     (gnus-summary-low-read-face ((t (:foreground "DarkGreen" :italic t))))
     (gnus-summary-low-ticked-face ((t (:foreground "firebrick" :italic t))))
     (gnus-summary-low-unread-face ((t (:italic t))))
     (gnus-summary-normal-ancient-face ((t (:foreground "RoyalBlue"))))
     (gnus-summary-normal-read-face ((t (:foreground "DarkGreen"))))
     (gnus-summary-normal-ticked-face ((t (:foreground "firebrick"))))
     (gnus-summary-normal-unread-face ((t (nil))))
     (gnus-summary-selected-face ((t (:underline t))))
     (highlight ((t (:background "gray93"))))
     (highlight-changes-delete-face ((t (:foreground "red" :underline t))))
     (highlight-changes-face ((t (:foreground "red"))))
     (highline-face ((t (:background "paleturquoise"))))
     (holiday-face ((t (:background "pink"))))
     (info-menu-5 ((t (:underline t))))
     (info-node ((t (:bold t :italic t))))
     (info-xref ((t (:bold t))))
     (italic ((t (:italic t))))
     (makefile-space-face ((t (:background "hotpink"))))
     (message-cited-text-face ((t (:foreground "red"))))
     (message-header-cc-face ((t (:foreground "MidnightBlue"))))
     (message-header-name-face ((t (:foreground "cornflower blue"))))
     (message-header-newsgroups-face ((t (:foreground "blue4" :bold t :italic t))))
     (message-header-other-face ((t (:foreground "steel blue"))))
     (message-header-subject-face ((t (:foreground "navy blue" :bold t))))
     (message-header-to-face ((t (:foreground "MidnightBlue" :bold t))))
     (message-header-xheader-face ((t (:foreground "blue"))))
     (message-separator-face ((t (:foreground "brown"))))

     ;; customizations
     ;; '(mode-line ((t (:background "gray75" :foreground "white" :box (:line-width -1 :color "black" :style released-button) :weight light))))
     ;; '(mode-line-buffer-id ((t (:foreground "blue2" :weight bold))))
     ;; '(mode-line-highlight ((((class color) (min-colors 88)) (:foreground "black" :box (:line-width -1 :color "black" :style released-button) :weight bold))))
     ;; '(mode-line-inactive ((default (:inherit mode-line)) (((class color) (min-colors 88) (background light)) (:background "grey90" :foreground "grey20" :box nil :weight light)))))
     
     (mode-line ((t (:background "grey75" :foreground "black" :box (:line-width -1 :color "black")))))
     (mode-line-buffer-id ((t (:foreground "blue2" :bold t))))
     (mode-line-mousable ((t (:foreground "white" :background "gray70"))))
     (mode-line-mousable-minor-mode ((t (:foreground "white" :background "gray70"))))

     (outline-1 ((t (:foreground "Black" :weight normal))))
     (outline-2 ((t (:foreground "Black" :weight normal))))
     (outline-3 ((t (:foreground "Black" :weight normal))))
     (outline-4 ((t (:foreground "Black" :weight normal))))
     (outline-5 ((t (:foreground "Black" :weight normal))))
     (outline-6 ((t (:foreground "Black" :weight normal))))
     (outline-7 ((t (:foreground "Black" :weight normal))))
     (outline-8 ((t (:foreground "Black" :weight normal))))

     (region ((t (:background "gray"))))
     (secondary-selection ((t (:background "paleturquoise"))))
     (show-paren-match-face ((t (:background "turquoise"))))
     (show-paren-mismatch-face ((t (:foreground "white" :background "purple"))))
     (speedbar-button-face ((t (:foreground "green4"))))
     (speedbar-directory-face ((t (:foreground "blue4"))))
     (speedbar-file-face ((t (:foreground "cyan4"))))
     (speedbar-highlight-face ((t (:background "green"))))
     (speedbar-selected-face ((t (:foreground "red" :underline t))))
     (speedbar-tag-face ((t (:foreground "brown"))))
     (term-black ((t (:foreground "black"))))
     (term-blackbg ((t (:background "black"))))
     (term-blue ((t (:foreground "blue"))))
     (term-bluebg ((t (:background "blue"))))
     (term-bold ((t (:bold t))))
     (term-cyan ((t (:foreground "cyan"))))
     (term-cyanbg ((t (:background "cyan"))))
     (term-default-bg ((t (nil))))
     (term-default-bg-inv ((t (nil))))
     (term-default-fg ((t (nil))))
     (term-default-fg-inv ((t (nil))))
     (term-green ((t (:foreground "green"))))
     (term-greenbg ((t (:background "green"))))
     (term-invisible ((t (nil))))
     (term-invisible-inv ((t (nil))))
     (term-magenta ((t (:foreground "magenta"))))
     (term-magentabg ((t (:background "magenta"))))
     (term-red ((t (:foreground "red"))))
     (term-redbg ((t (:background "red"))))
     (term-underline ((t (:underline t))))
     (term-white ((t (:foreground "white"))))
     (term-whitebg ((t (:background "white"))))
     (term-yellow ((t (:foreground "yellow"))))
     (term-yellowbg ((t (:background "yellow"))))
     (underline ((t (:underline t))))
     (vcursor ((t (:foreground "blue" :background "cyan" :underline t))))
     (vhdl-font-lock-attribute-face ((t (:foreground "Orchid"))))
     (vhdl-font-lock-directive-face ((t (:foreground "CadetBlue"))))
     (vhdl-font-lock-enumvalue-face ((t (:foreground "Gold4"))))
     (vhdl-font-lock-function-face ((t (:foreground "Orchid4"))))
     (vhdl-font-lock-prompt-face ((t (:foreground "Red" :bold t))))
     (vhdl-font-lock-reserved-words-face ((t (:foreground "Orange" :bold t))))
     (vhdl-font-lock-translate-off-face ((t (:background "LightGray"))))
     (vhdl-speedbar-architecture-face ((t (:foreground "Blue"))))
     (vhdl-speedbar-architecture-selected-face ((t (:foreground "Blue" :underline t))))
     (vhdl-speedbar-configuration-face ((t (:foreground "DarkGoldenrod"))))
     (vhdl-speedbar-configuration-selected-face ((t (:foreground "DarkGoldenrod" :underline t))))
     (vhdl-speedbar-entity-face ((t (:foreground "ForestGreen"))))
     (vhdl-speedbar-entity-selected-face ((t (:foreground "ForestGreen" :underline t))))
     (vhdl-speedbar-instantiation-face ((t (:foreground "Brown"))))
     (vhdl-speedbar-instantiation-selected-face ((t (:foreground "Brown" :underline t))))
     (vhdl-speedbar-package-face ((t (:foreground "Grey50"))))
     (vhdl-speedbar-package-selected-face ((t (:foreground "Grey50" :underline t))))
     (viper-minibuffer-emacs-face ((t (:foreground "Black" :background "darkseagreen2"))))
     (viper-minibuffer-insert-face ((t (:foreground "Black" :background "pink"))))
     (viper-minibuffer-vi-face ((t (:foreground "DarkGreen" :background "grey"))))
     (viper-replace-overlay-face ((t (:foreground "Black" :background "darkseagreen2"))))
     (viper-search-face ((t (:foreground "Black" :background "khaki"))))
     (widget-button-face ((t (:bold t))))
     (widget-button-pressed-face ((t (:foreground "red"))))
     (widget-documentation-face ((t (:foreground "dark green"))))
     (widget-field-face ((t (:background "gray85"))))
     (widget-inactive-face ((t (:foreground "dim gray"))))
     (widget-single-line-field-face ((t (:background "gray85"))))
     )))

(defun color-theme-jpl-snowish ()
  "based on snowish color theme by Girish Bharadwaj."
  (interactive)
  (color-theme-install
   '(color-theme-jpl
     ((background-color . "snow1")
      (background-mode . light)
      (cursor-color . "Red4")
      (foreground-color . "darkslategray"))
     ((buffers-tab-face . buffers-tab)
      (gnus-mouse-face . highlight)
      (sgml-set-face . t)
      (smiley-mouse-face . highlight))
     (default ((t (nil))))
     (blue ((t (:foreground "blue"))))
     (bold ((t (:bold t :foreground "peru"))))
     (bold-italic ((t (:italic t :bold t))))
     (border-glyph ((t (nil))))
     (buffers-tab ((t (:background "snow1" :foreground "darkslategray"))))
     (custom-button-face ((t (:bold t))))
     (custom-changed-face ((t (:background "blue" :foreground "white"))))
     (custom-comment-face ((t (:background "gray85"))))
     (custom-comment-tag-face ((t (:foreground "blue4"))))
     (custom-documentation-face ((t (nil))))
     (custom-face-tag-face ((t (:underline t))))
     (custom-group-tag-face ((t (:underline t :foreground "blue"))))
     (custom-group-tag-face-1 ((t (:underline t :foreground "red"))))
     (custom-invalid-face ((t (:background "red" :foreground "yellow"))))
     (custom-modified-face ((t (:background "blue" :foreground "white"))))
     (custom-rogue-face ((t (:background "black" :foreground "pink"))))
     (custom-saved-face ((t (:underline t))))
     (custom-set-face ((t (:background "white" :foreground "blue"))))
     (custom-state-face ((t (:foreground "dark green"))))
     (custom-variable-button-face ((t (:underline t :bold t))))
     (custom-variable-tag-face ((t (:underline t :foreground "blue"))))
     (cyan ((t (:foreground "cyan"))))
     (diredp-compressed-file-suffix ((t (:foreground "orange3"))))
     (diredp-date-time ((t (:background "gray89"))))
     (diredp-dir-heading ((t (:foreground "Blue" :underline "gray50"))))
     (diredp-dir-priv ((t (:foreground "Blue"))))
     (diredp-exec-priv ((t nil)))
     (diredp-file-name ((t nil)))
     (diredp-file-suffix ((t (:foreground "Gray25"))))
     (diredp-ignored-file-name ((t (:foreground "darkslategray4"))))
     (diredp-link-priv ((t nil)))
     (diredp-no-priv ((t nil)))
     (diredp-number ((t (:foreground "darkgreen"))))
     (diredp-read-priv ((t nil)))
     (diredp-symlink ((t (:foreground "darkorange4"))))
     (diredp-write-priv ((t (:weight bold))))
     (display-time-mail-balloon-enhance-face ((t (:background "orange"))))
     (display-time-mail-balloon-gnus-group-face ((t (:foreground "blue"))))
     (display-time-time-balloon-face ((t (:foreground "red"))))
     (eshell-ls-archive-face ((t (:bold t :foreground "Orchid"))))
     (eshell-ls-backup-face ((t (:foreground "OrangeRed"))))
     (eshell-ls-clutter-face ((t (:bold t :foreground "OrangeRed"))))
     (eshell-ls-directory-face ((t (:bold t :foreground "Blue"))))
     (eshell-ls-executable-face ((t (:bold t :foreground "ForestGreen"))))
     (eshell-ls-missing-face ((t (:bold t :foreground "Red"))))
     (eshell-ls-product-face ((t (:foreground "OrangeRed"))))
     (eshell-ls-readonly-face ((t (:foreground "Brown"))))
     (eshell-ls-special-face ((t (:bold t :foreground "Magenta"))))
     (eshell-ls-symlink-face ((t (:bold t :foreground "Dark Cyan"))))
     (eshell-ls-unreadable-face ((t (:foreground "Grey30"))))
     (eshell-prompt-face ((t (:bold t :foreground "Red"))))
     (font-lock-builtin-face ((t (:underline t :foreground "blue"))))
     (font-lock-comment-face ((t (:foreground "snow4"))))
     (font-lock-constant-face ((t (:foreground "CadetBlue"))))
     (font-lock-doc-string-face ((t (:foreground "mediumblue"))))
     ;;(font-lock-function-name-face ((t (:bold t :foreground "darkblue"))))
     (font-lock-function-name-face ((t (:foreground "darkblue"))))
     ;;(font-lock-keyword-face ((t (:bold t :foreground "dodgerblue"))))
     (font-lock-keyword-face ((t (:bold t :foreground "blue3"))))
     (font-lock-preprocessor-face ((t (:underline t :foreground "blue3"))))
     (font-lock-reference-face ((t (:foreground "red3"))))
     ;;(font-lock-string-face ((t (:foreground "darkviolet"))))
     (font-lock-string-face ((t (:foreground "tomato3"))))
     (font-lock-type-face ((t (:foreground "darkgoldenrod"))))
     (font-lock-variable-name-face ((t (:foreground "tomato"))))
     (font-lock-warning-face ((t (:bold t :foreground "Red"))))
     (gnus-cite-attribution-face ((t (nil))))
     (gnus-cite-face-1 ((t (:foreground "MidnightBlue"))))
     (gnus-cite-face-10 ((t (:foreground "medium purple"))))
     (gnus-cite-face-11 ((t (:foreground "turquoise"))))
     (gnus-cite-face-2 ((t (:foreground "firebrick"))))
     (gnus-cite-face-3 ((t (:foreground "dark green"))))
     (gnus-cite-face-4 ((t (:foreground "OrangeRed"))))
     (gnus-cite-face-5 ((t (:foreground "dark khaki"))))
     (gnus-cite-face-6 ((t (:foreground "dark violet"))))
     (gnus-cite-face-7 ((t (:foreground "SteelBlue4"))))
     (gnus-cite-face-8 ((t (:foreground "magenta"))))
     (gnus-cite-face-9 ((t (:foreground "violet"))))
     (gnus-emphasis-bold ((t (:bold t))))
     (gnus-emphasis-bold-italic ((t (nil))))
     (gnus-emphasis-highlight-words ((t (:background "black" :foreground "yellow"))))
     (gnus-emphasis-italic ((t (nil))))
     (gnus-emphasis-underline ((t (:underline t))))
     (gnus-emphasis-underline-bold ((t (:underline t :bold t))))
     (gnus-emphasis-underline-bold-italic ((t (:underline t))))
     (gnus-emphasis-underline-italic ((t (:underline t))))
     (gnus-group-mail-1-empty-face ((t (:foreground "DeepPink3"))))
     (gnus-group-mail-1-face ((t (:bold t :foreground "DeepPink3"))))
     (gnus-group-mail-2-empty-face ((t (:foreground "HotPink3"))))
     (gnus-group-mail-2-face ((t (:bold t :foreground "HotPink3"))))
     (gnus-group-mail-3-empty-face ((t (:foreground "magenta4"))))
     (gnus-group-mail-3-face ((t (:bold t :foreground "magenta4"))))
     (gnus-group-mail-low-empty-face ((t (:foreground "DeepPink4"))))
     (gnus-group-mail-low-face ((t (:bold t :foreground "DeepPink4"))))
     (gnus-group-news-1-empty-face ((t (:foreground "ForestGreen"))))
     (gnus-group-news-1-face ((t (:bold t :foreground "ForestGreen"))))
     (gnus-group-news-2-empty-face ((t (:foreground "CadetBlue4"))))
     (gnus-group-news-2-face ((t (:bold t :foreground "CadetBlue4"))))
     (gnus-group-news-3-empty-face ((t (nil))))
     (gnus-group-news-3-face ((t (:bold t))))
     (gnus-group-news-4-empty-face ((t (nil))))
     (gnus-group-news-4-face ((t (:bold t))))
     (gnus-group-news-5-empty-face ((t (nil))))
     (gnus-group-news-5-face ((t (:bold t))))
     (gnus-group-news-6-empty-face ((t (nil))))
     (gnus-group-news-6-face ((t (:bold t))))
     (gnus-group-news-low-empty-face ((t (:foreground "DarkGreen"))))
     (gnus-group-news-low-face ((t (:bold t :foreground "DarkGreen"))))
     (gnus-header-content-face ((t (:foreground "indianred4"))))
     (gnus-header-from-face ((t (:foreground "red3"))))
     (gnus-header-name-face ((t (:foreground "maroon"))))
     (gnus-header-newsgroups-face ((t (:foreground "MidnightBlue"))))
     (gnus-header-subject-face ((t (:foreground "red4"))))
     (gnus-picons-face ((t (:background "white" :foreground "black"))))
     (gnus-picons-xbm-face ((t (:background "white" :foreground "black"))))
     (gnus-signature-face ((t (nil))))
     (gnus-splash-face ((t (:foreground "Brown"))))
     (gnus-summary-cancelled-face ((t (:background "black" :foreground "yellow"))))
     (gnus-summary-high-ancient-face ((t (:bold t :foreground "RoyalBlue"))))
     (gnus-summary-high-read-face ((t (:bold t :foreground "DarkGreen"))))
     (gnus-summary-high-ticked-face ((t (:bold t :foreground "firebrick"))))
     (gnus-summary-high-unread-face ((t (:bold t))))
     (gnus-summary-low-ancient-face ((t (:foreground "RoyalBlue"))))
     (gnus-summary-low-read-face ((t (:foreground "DarkGreen"))))
     (gnus-summary-low-ticked-face ((t (:foreground "firebrick"))))
     (gnus-summary-low-unread-face ((t (nil))))
     (gnus-summary-normal-ancient-face ((t (:foreground "RoyalBlue"))))
     (gnus-summary-normal-read-face ((t (:foreground "DarkGreen"))))
     (gnus-summary-normal-ticked-face ((t (:foreground "firebrick"))))
     (gnus-summary-normal-unread-face ((t (nil))))
     (gnus-summary-selected-face ((t (:underline t))))
     (gnus-x-face ((t (:background "white" :foreground "black"))))
     (green ((t (:foreground "green"))))
     (gui-button-face ((t (:background "grey75" :foreground "black"))))
     (gui-element ((t (:background "#D4D0C8" :foreground "black"))))
     (highlight ((t (:background "snow2"))))
     (html-helper-bold-face ((t (:bold t))))
     (html-helper-bold-italic-face ((t (nil))))
     (html-helper-builtin-face ((t (:underline t :foreground "blue3"))))
     (html-helper-italic-face ((t (:foreground "medium sea green"))))
     (html-helper-underline-face ((t (:underline t))))
     (html-tag-face ((t (:bold t))))
     (hyper-apropos-documentation ((t (:foreground "darkred"))))
     (hyper-apropos-heading ((t (:bold t))))
     (hyper-apropos-hyperlink ((t (:foreground "blue4"))))
     (hyper-apropos-major-heading ((t (:bold t))))
     (hyper-apropos-section-heading ((t (nil))))
     (hyper-apropos-warning ((t (:bold t :foreground "red"))))
     (info-menu-6 ((t (nil))))
     (isearch ((t (:background "paleturquoise"))))
     (isearch-secondary ((t (:foreground "red3"))))
     (italic ((t (nil))))
     (jde-bug-breakpoint-cursor ((t (:background "brown" :foreground "cyan"))))
     (jde-bug-breakpoint-marker ((t (:background "yellow" :foreground "red"))))
     (jde-java-font-lock-link-face ((t (:underline t :foreground "blue"))))
     (jde-java-font-lock-number-face ((t (:foreground "RosyBrown"))))
     (left-margin ((t (nil))))
     (list-mode-item-selected ((t (:background "gray68" :foreground "darkslategray"))))
     (magenta ((t (:foreground "magenta"))))
     (message-cited-text-face ((t (:foreground "red"))))
     (message-header-cc-face ((t (:foreground "MidnightBlue"))))
     (message-header-name-face ((t (:foreground "cornflower blue"))))
     (message-header-newsgroups-face ((t (:foreground "blue4"))))
     (message-header-other-face ((t (:foreground "steel blue"))))
     (message-header-subject-face ((t (:bold t :foreground "navy blue"))))
     (message-header-to-face ((t (:bold t :foreground "MidnightBlue"))))
     (message-header-xheader-face ((t (:foreground "blue"))))
     (message-mml-face ((t (:foreground "ForestGreen"))))
     (message-separator-face ((t (:foreground "brown"))))
     (modeline ((t (nil))))
     (modeline-buffer-id ((t (:background "#D4D0C8" :foreground "blue4"))))
     (modeline-mousable ((t (:background "#D4D0C8" :foreground "firebrick"))))
     (modeline-mousable-minor-mode ((t (:background "#D4D0C8" :foreground "green4"))))
     (outline-1 ((t (:inherit font-lock-function-name-face :foreground "gray15"))))
     (outline-2 ((t (:inherit font-lock-variable-name-face :foreground "gray15"))))
     (outline-3 ((t (:inherit font-lock-keyword-face :foreground "gray15" :weight normal))))
     (outline-4 ((t (:foreground "gray15"))))
     (outline-5 ((t (:inherit font-lock-type-face :foreground "gray15"))))
     (outline-6 ((t (:inherit font-lock-constant-face :foreground "gray15"))))
     (outline-7 ((t (:inherit font-lock-builtin-face :foreground "gray15"))))
     (outline-8 ((t (:inherit font-lock-string-face :foreground "gray15"))))
     (paren-blink-off ((t (:foreground "snow1"))))
     (paren-match ((t (:background "darkseagreen2"))))
     (paren-mismatch ((t (:background "snow1" :foreground "darkslategray"))))
     (pointer ((t (nil))))
     (primary-selection ((t (:background "gray65"))))
     (red ((t (:foreground "red"))))
     (right-margin ((t (nil))))
     (secondary-selection ((t (:background "paleturquoise"))))
     (semantic-intangible-face ((t (:foreground "gray25"))))
     (semantic-read-only-face ((t (:background "gray25"))))
     (senator-momentary-highlight-face ((t (:background "gray70"))))
     (speedbar-button-face ((t (:foreground "green4"))))
     (speedbar-directory-face ((t (:foreground "blue4"))))
     (speedbar-file-face ((t (:foreground "cyan4"))))
     (speedbar-highlight-face ((t (:background "green"))))
     (speedbar-selected-face ((t (:underline t :foreground "red"))))
     (speedbar-tag-face ((t (:foreground "brown"))))
     (template-message-face ((t (:bold t))))
     (term-blue-bold-face ((t (:bold t :background "snow1" :foreground "blue"))))
     (term-blue-face ((t (:foreground "blue"))))
     (term-blue-inv-face ((t (:background "blue"))))
     (term-blue-ul-face ((t (:underline t :background "snow1" :foreground "blue"))))
     (term-cyan-bold-face ((t (:bold t :background "snow1" :foreground "cyan"))))
     (term-cyan-face ((t (:foreground "cyan"))))
     (term-cyan-inv-face ((t (:background "cyan"))))
     (term-cyan-ul-face ((t (:underline t :background "snow1" :foreground "cyan"))))
     (term-default-bold-face ((t (:bold t :background "snow1" :foreground "darkslategray"))))
     (term-default-face ((t (:background "snow1" :foreground "darkslategray"))))
     (term-default-inv-face ((t (:background "darkslategray" :foreground "snow1"))))
     (term-default-ul-face ((t (:underline t :background "snow1" :foreground "darkslategray"))))
     (term-green-bold-face ((t (:bold t :background "snow1" :foreground "green"))))
     (term-green-face ((t (:foreground "green"))))
     (term-green-inv-face ((t (:background "green"))))
     (term-green-ul-face ((t (:underline t :background "snow1" :foreground "green"))))
     (term-magenta-bold-face ((t (:bold t :background "snow1" :foreground "magenta"))))
     (term-magenta-face ((t (:foreground "magenta"))))
     (term-magenta-inv-face ((t (:background "magenta"))))
     (term-magenta-ul-face ((t (:underline t :background "snow1" :foreground "magenta"))))
     (term-red-bold-face ((t (:bold t :background "snow1" :foreground "red"))))
     (term-red-face ((t (:foreground "red"))))
     (term-red-inv-face ((t (:background "red"))))
     (term-red-ul-face ((t (:underline t :background "snow1" :foreground "red"))))
     (term-white-bold-face ((t (:bold t :background "snow1" :foreground "white"))))
     (term-white-face ((t (:foreground "white"))))
     (term-white-inv-face ((t (:background "snow1"))))
     (term-white-ul-face ((t (:underline t :background "snow1" :foreground "white"))))
     (term-yellow-bold-face ((t (:bold t :background "snow1" :foreground "yellow"))))
     (term-yellow-face ((t (:foreground "yellow"))))
     (term-yellow-inv-face ((t (:background "yellow"))))
     (term-yellow-ul-face ((t (:underline t :background "snow1" :foreground "yellow"))))
     (text-cursor ((t (:background "Red3" :foreground "snow1"))))
     (toolbar ((t (nil))))
     (underline ((t (:underline t))))
     (vertical-divider ((t (nil))))
     (white ((t (:foreground "white"))))
     (widget ((t (nil))))
     (widget-button-face ((t (:bold t))))
     (widget-button-pressed-face ((t (:foreground "red"))))
     (widget-documentation-face ((t (:foreground "dark green"))))
     (widget-field-face ((t (:background "gray85"))))
     (widget-inactive-face ((t (:foreground "dim gray"))))
     (yellow ((t (:foreground "yellow"))))
     (zmacs-region ((t (:background "gray65"))))
     )))
