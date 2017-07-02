{:user {:plugins [[org.clojure/clojure "1.8.0"]
                  [cider/cider-nrepl "0.15.0-SNAPSHOT"]
                  [refactor-nrepl "2.4.0-SNAPSHOT"]

                  [venantius/ultra "0.5.1"]
                  [spyscope "0.1.6"] ; #spy/t #spy/p #spy/d
                  [aprint "0.1.3"] ; awesome pprint

                  [lein-hiera "0.9.5"]

                  [jonase/eastwood "0.2.4"]
                  [lein-kibit "0.1.5"]
                  [lein-bikeshed "0.4.1"]

                  [lein-cljfmt "0.5.6"] ; lein cljfmt fix

                  ;; NOTE: lein ancient upgrade-profiles to upgrade this file
                  [lein-ancient "0.6.10"]]

        :aliases {"slamhound" ["run" "-m" "slam.hound"]}

        :dependencies [[slamhound "1.5.5"]

                       [alembic "0.3.2"]
                       [org.clojure/tools.nrepl "0.2.13"]] }}
