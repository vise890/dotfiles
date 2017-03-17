{:user {:plugins [[cider/cider-nrepl "0.15.0-SNAPSHOT"]
                  [refactor-nrepl "2.3.0"]

                  ;; [jonase/eastwood "0.2.3"]
                  ;; [lein-kibit "0.1.3"]
                  ;; [lein-cljfmt "0.5.6"] ; lein cljfmt fix
                  ;; [lein-bikeshed "0.4.1"]

                  ;; [lein-ns-dep-graph "0.2.0-SNAPSHOT"]

                  ;; NOTE: lein ancient upgrade-profiles to upgrade this file
                  [lein-ancient "0.6.10"]]

        :aliases {"slamhound" ["run" "-m" "slam.hound"]}

        :dependencies [;; [org.clojure/clojure "1.8.0"]
                       ;; [slamhound "1.5.5"]
                       [alembic "0.3.2"]

                       [pjstadig/humane-test-output "0.8.1"]
                       [clj-stacktrace "0.2.8"]

                       [org.clojure/tools.nrepl "0.2.12"]]

        :injections [(require 'pjstadig.humane-test-output)
                     (pjstadig.humane-test-output/activate!)

                     (let [orig (ns-resolve (doto 'clojure.stacktrace require)
                                            'print-cause-trace)
                           new (ns-resolve (doto 'clj-stacktrace.repl require)
                                           'pst)]
                       (alter-var-root orig (constantly (deref new))))] }}
