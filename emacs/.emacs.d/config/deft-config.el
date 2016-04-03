(require 'powerpack)
(ensure-are-installed!
 '(deft
   bind-map))

(bind-map-set-keys main-leader-map
  "an" 'deft)
(setq deft-recursive t)
(setq deft-use-filename-as-title t)
(setq deft-use-filter-string-for-filename t)
(setq deft-extensions '("txt" "org" "md"))
(setq deft-directory "~/Documents/org")

(provide 'deft-config)
