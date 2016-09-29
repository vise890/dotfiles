resolvers += Resolver.url("rtimush/sbt-plugin-snapshots", new URL("https://dl.bintray.com/rtimush/sbt-plugin-snapshots/"))(Resolver.ivyStylePatterns)
addSbtPlugin("com.timushev.sbt" % "sbt-updates" % "0.2.0")
