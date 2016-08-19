{:user {:plugins [[cider/cider-nrepl "0.14.0-SNAPSHOT"]
                  [refactor-nrepl "2.3.0-SNAPSHOT"]

                  [jonase/eastwood "0.2.3"]
                  [lein-kibit "0.1.2"]

                  [lein-ancient "0.6.10"]]

        :aliases {"slamhound" ["run" "-m" "slam.hound"]}

        :dependencies [[slamhound "1.5.5"]
                       [alembic "0.3.2"]
                       [org.clojure/tools.nrepl "0.2.12"]]}}
