{:user {:plugins [[org.clojure/clojure "1.8.0"]
                  [cider/cider-nrepl "0.15.0-SNAPSHOT"]
                  [refactor-nrepl "2.3.1"]

                  [venantius/ultra "0.5.1"]

                  [jonase/eastwood "0.2.4"]
                  [lein-kibit "0.1.5"]

                  [lein-bikeshed "0.4.1"]
                  [lein-cljfmt "0.5.6"] ; lein cljfmt fix

                  ;; [lein-ns-dep-graph "0.2.0-SNAPSHOT"]

                  ;; NOTE: lein ancient upgrade-profiles to upgrade this file
                  [lein-ancient "0.6.10"]]

        ;; :aliases {"slamhound" ["run" "-m" "slam.hound"]}

        :dependencies [;; [org.clojure/clojure "1.8.0"]
                       ;; [slamhound "1.5.5"]

                       [alembic "0.3.2"]
                       [org.clojure/tools.nrepl "0.2.13"]]}}
