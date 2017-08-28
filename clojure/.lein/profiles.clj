{:user {:plugins [[cider/cider-nrepl "0.15.1-SNAPSHOT"]
                  [refactor-nrepl "2.4.0-SNAPSHOT"]

                  [lein-cljfmt "0.5.7"] ; lein cljfmt fix

                  ;; [venantius/ultra "0.5.1"]
                  ;; [spyscope "0.1.6"] ; #spy/t #spy/p #spy/d

                  ;; [lein-hiera "0.9.5"]

                  ;; [jonase/eastwood "0.2.4"]
                  ;; [lein-kibit "0.1.5"]
                  ;; [lein-bikeshed "0.4.1"]


                  ;; NOTE: lein ancient upgrade-profiles to upgrade this file
                  ;; [lein-ancient "0.6.10"]

                  ;; [lein-marginalia "0.9.0"]
                  ]

        ;; :aliases {"slamhound" ["run" "-m" "slam.hound"]}

        :dependencies [[org.clojure/tools.nrepl "0.2.13"]
                       ;;[org.clojure/tools.analyzer "0.6.9"]
                       [alembic "0.3.2"
                        :exclusions [org.tcrawley/dynapath]]

                       ;; [slamhound "1.5.5"]
                       ] }}
