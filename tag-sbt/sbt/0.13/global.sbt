// ~/.sbt/0.13/global.sbt

cancelable in Global := true

libraryDependencies += "com.lihaoyi" % "ammonite" % "latest.integration" cross CrossVersion.full

initialCommands in console := """ammonite.Main().run()"""
