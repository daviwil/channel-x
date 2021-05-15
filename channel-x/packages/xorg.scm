(define-module (channel-x packages xorg)
  #:use-module (guix packages)
  #:use-module (gnu packages gl)
  #:use-module (gnu packages xorg)
  #:use-module (gnu packages linux)
  #:use-module (gnu packages freedesktop))

(define-public intel-virtual-output
  (package
    (inherit xf86-video-intel)
    (name "intel-virtual-output")
    (inputs (append (package-inputs xf86-video-intel)
                    `(("libxinerama" ,libxinerama)
                      ("libxrandr" ,libxrandr)
                      ("libxtst" ,libxtst)
                      ("libxcursor" ,libxcursor)
                      ("libxscrnsaver" ,libxscrnsaver))))))
