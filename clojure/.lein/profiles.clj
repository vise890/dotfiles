{:user {:plugins      [[cider/cider-nrepl "0.15.1"]
                       [refactor-nrepl "2.4.0-SNAPSHOT"]
                       ;; [spyscope "0.1.6"] ; #spy/t #spy/p #spy/d
                       [com.billpiel/sayid "0.0.15"]]
        :dependencies [[org.clojure/tools.nrepl "0.2.13"]
                       [alembic "0.3.2" :exclusions [org.tcrawley/dynapath]]]}

 :misc {:plugins [[lein-marginalia "0.9.0"]
                  [lein-hiera "0.9.5"]
                  [lein-cljfmt "0.5.7"] ;; lein cljfmt fix
                  [lein-zprint "0.3.2"]
                  [lein-pprint "1.1.2"]
                  ;; NOTE: lein ancient upgrade-profiles to upgrade this file
                  [lein-ancient "0.6.12"]]
        :zprint  {:old? false}}

 :lint {:plugins [
                  [jonase/eastwood "0.2.4"]
                  ;; lein kibit --replace --interactive
                  [lein-kibit "0.1.5"]
                  [lein-bikeshed "0.4.1"]
                  [venantius/yagni "0.1.4"]]

        :dependencies [[slamhound "1.5.5"]]
        :aliases      {"slamhound" ["run" "-m" "slam.hound"]}}

 :fancy-testing {:plugins [[venantius/ultra "0.5.1"]
                           [lein-eftest "0.3.1"]
                           [lein-cloverage "1.0.9"]]}}
