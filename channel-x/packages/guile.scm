(define-module (channel-x packages guile)
  #:use-module (gnu packages tls)
  #:use-module (gnu packages gnupg)
  #:use-module (gnu packages guile)
  #:use-module (gnu packages guile-xyz)
  #:use-module (gnu packages pkg-config)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system gnu)
  #:use-module ((guix licenses) #:prefix license:))

(define-public guile-oauth
  (package
    (name "guile-oauth")
    (version "1.0.1")
    (home-page "https://github.com/aconchillo/guile-oauth")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://savannah/guile-oauth/guile-oauth-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0g1h6vw677zizl6sgsxa0shg4w19vdk0vvpk09416gkgigjg5rz8"))))
    (build-system gnu-build-system)
    ;; (arguments
    ;;  `(#:make-flags '("GUILE_AUTO_COMPILE=0")))   ;to prevent guild warnings
    (native-inputs `(("pkg-config" ,pkg-config)
                     ("guile" ,guile-3.0)))
    (propagated-inputs
     `(("gnutls" ,gnutls)
       ("guile-gnutls" ,gnutls)
       ("guile-gcrypt" ,guile-gcrypt)
       ("guile-json" ,guile-json-3)))
    ;; (inputs `(("guile" ,guile-3.0)))
    (synopsis "OAuth 1.0 and 2.0 module for Guile")
    (description
     "Guile-OAuth is an OAuth client module for Guile.  It supports the following
features:

@itemize
@item OAuth 1.0a with HMAC-SHA1 and PLAINTEXT signatures
@item OAuth 2.0 with authorization code and client credentials grant types
@end itemize\n")

    (license license:gpl3+)))

;; (define-public guile2.2-oauth
;;   (package-for-guile-2.2 guile-oauth))
