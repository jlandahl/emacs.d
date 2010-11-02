(deftheme jpl-win
  "Created 2009-11-24.")

(custom-theme-set-variables
 'jpl-win
 '(ispell-program-name "aspell")
 '(tramp-default-method "plink")
 '(browse-url-browser-function browse-url-firefox)
 '(browse-url-firefox-program "c:/program files/mozilla firefox/firefox.exe")
 '(org-mobile-directory "w:/org"))

(custom-theme-set-faces
 'jpl-win
 ;;'(default ((t (:family "Consolas" :foundry "outline" :width normal :height 113 :weight normal :slant normal :underline nil :overline nil :strike-through nil :box nil :inverse-video nil :foreground "#141312" :background "#ffffff" :stipple nil :inherit nil))))
 ;;'(cursor ((t (:background "gray" :foreground "black"))))
 )

(provide-theme 'jpl-win)
