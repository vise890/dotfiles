{:user {:plugins [[lein-kibit "0.1.2"]
                  [cider/cider-nrepl "0.9.0-SNAPSHOT"]
                  [refactor-nrepl  "0.3.0-SNAPSHOT"]
                  [lein-ancient "0.6.7"]
                  [lein-cljfmt "0.1.10"]

                  [jonase/eastwood "0.2.1"]]
        :eastwood {:linters [:all]}

        :dependencies [[slamhound "1.5.5"]
                       [alembic "0.3.2"]
                       [org.clojure/tools.nrepl "0.2.7"]]
        :aliases {"slamhound" ["run" "-m" "slam.hound"]}}}
