(require 'powerpack)
(ensure-are-installed!
 '(bind-map))

(bind-map-set-keys main-leader-map
  "ad" 'dired)

(provide 'dired-config)
