{:user {:plugins [[lein-kibit "0.0.8"]
                  [cider/cider-nrepl "0.9.0-SNAPSHOT"]
                  [lein-ancient "0.6.3"]
                  [lein-cljfmt "0.1.10"]

                  [jonase/eastwood "0.2.1"]]
        :eastwood {:linters [:all]}

        :dependencies [[slamhound "1.5.5"]]
        :aliases {"slamhound" ["run" "-m" "slam.hound"]}}}
