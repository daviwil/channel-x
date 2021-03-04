(define-module (channel-x packages emacs)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix packages)
  #:use-module (guix git-download)
  #:use-module (guix build-system emacs)
  #:use-module (gnu packages emacs-xyz))

;; Sacha isn't ready to publish this yet, so I'm packaging it for myself!
(define-public emacs-obs-websocket-el
  (let ((commit "ce6be2a417705098e26c76122eff2a0261f57d42")
        (revision "0"))
    (package
      (name "emacs-obs-websocket-el")
      (version (git-version "0.1" revision commit))
      (source
       (origin
         (uri (git-reference
               (url "https://github.com/sachac/obs-websocket-el")
               (commit commit)))
         (method git-fetch)
         (sha256
          (base32 "0fdjpxc75jk9cxgg66p24z1n5w9zzqbrci5mlqam31a2caip9bmx"))
         (file-name (git-file-name name version))))
      (build-system emacs-build-system)
      (propagated-inputs `(("emacs-websocket" ,emacs-websocket)))
      (home-page "https://github.com/sachac/obs-websocket-el")
      (synopsis "Emacs package for remote control of OBS")
      (description
       "obs-websocket-el is a client for the obs-websocket plugin for OBS.
It enables you to remotely control your streaming or recording session from
Emacs!")
      (license license:gpl3+))))

(define-public emacs-super-save
  (let ((commit "886b5518c8a8b4e1f5e59c332d5d80d95b61201d")
        (revision "0"))
    (package
      (name "emacs-super-save")
      (version (git-version "0.3.0" revision commit))
      (source
       (origin
         (uri (git-reference
               (url "https://github.com/bbatsov/super-save")
               (commit commit)))
         (method git-fetch)
         (sha256
          (base32 "1w62sd1vcn164y70rgwgys6a8q8mwzplkiwqiib8vjzqn87w0lqv"))
         (file-name (git-file-name name version))))
      (build-system emacs-build-system)
      (home-page "https://github.com/bbatsov/super-save")
      (synopsis "Emacs package for automatic saving of buffers")
      (description
       "super-save auto-saves your buffers, when certain events happen: you
switch between buffers, an Emacs frame loses focus, etc.  You can think of
it as an enhanced `auto-save-mode'")
      (license license:gpl3+))))

(define-public emacs-app-launcher
  (let ((commit "80a9ed37892ee6e21fe44487ed11f66a15e3f440")
        (revision "0"))
    (package
      (name "emacs-app-launcher")
      (version (git-version "0.1" revision commit))
      (source
       (origin
         (uri (git-reference
               (url "https://github.com/SebastienWae/app-launcher")
               (commit commit)))
         (method git-fetch)
         (sha256
          (base32 "1ywhfx8604ifmvcy2397bmvq2wj03jyqnm0g7lmqqi5p97rjbdgc"))
         (file-name (git-file-name name version))))
      (build-system emacs-build-system)
      (home-page "https://github.com/SebastienWae/app-launcher")
      (synopsis "Emacs package for launching desktop applications")
      (description
       "app-launcher is a package for launching applications with .desktop
files.  It can be considered a replacement for `counsel-linux-app' for those
who prefer a solution that works with Emacs' native completion systems.")
      (license license:gpl3+))))

(define-public emacs-dired-single
  (let ((commit "98c2102429fcac6fbfdba9198c126eb1b3dcc4e5")
        (revision "0"))
    (package
      (name "emacs-dired-single")
      (version (git-version "0.2.0" revision commit))
      (source
       (origin
         (uri (git-reference
               (url "https://github.com/crocket/dired-single")
               (commit commit)))
         (method git-fetch)
         (sha256
          (base32 "1adh8sr7g2xc6b7is1cz48v109iavr2krkp5nd23bkgnjsjjkxlm"))
         (file-name (git-file-name name version))))
      (build-system emacs-build-system)
      (home-page "https://github.com/crocket/dired-single")
      (synopsis "Emacs package for reusing a dired buffer")
      (description
       "dired-single is a package that enables you to reuse the current Dired
buffer when navigating around your file system.  This will help avoid the many
Dired buffers that get left around for each directory you visit.")
      (license license:gpl2+))))

(define-public emacs-unicode-fonts
  (let ((commit "e3942fe40b418bfb2dc4e73633e09195437fef01")
        (revision "0"))
    (package
      (name "emacs-unicode-fonts")
      (version (git-version "0.4.10" revision commit))
      (source
       (origin
         (uri (git-reference
               (url "https://github.com/rolandwalker/unicode-fonts")
               (commit commit)))
         (method git-fetch)
         (sha256
          (base32 "1vyldpmbi92yqzj0v7wbxma86f3cla0jhxbmq8jzl94pqy6q98jc"))
         (file-name (git-file-name name version))))
      (build-system emacs-build-system)
      (propagated-inputs
       `(("emacs-list-utils" ,emacs-list-utils)
         ("emacs-persistent-soft" ,emacs-persistent-soft)
         ("emacs-pcache" ,emacs-pcache)))
      (home-page "https://github.com/rolandwalker/unicode-fonts")
      (synopsis "Emacs package for configuring unicode fonts")
      (description
       "unicode-fonts is a package that enables you to configure Unicode fonts
and configure font mappings correctly from specific Unicode blocks.  This can
be especially helpful for displaying emoji fonts in Emacs.")
      (license license:bsd-2))))
