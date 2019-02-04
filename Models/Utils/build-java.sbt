
// Project name (artifact name in Maven)
name := "(project name)"

// orgnization name (e.g., the package name of the project)
organization := "org.iscpif"

version := "1.0-SNAPSHOT"

// project description
description := "Project"

// Enables publishing to maven repo
publishMavenStyle := true

// Do not append Scala versions to the generated artifacts
crossPaths := false

// This forbids including Scala related libraries into the dependency
autoScalaLibrary := false

// library dependencies. (orginization name) % (project name) % (version)
libraryDependencies ++= Seq(
   "org.apache.commons" % "commons-math3" % "3.1.1"
)


/*
// One jar package
// project/plugins.sbt: addSbtPlugin("com.eed3si9n" % "sbt-assembly" % "0.11.2")
import AssemblyKeys._  // put this at the top of the file

assemblySettings

// sbt command : assembly
*/

/*
// Pack into one dir
// addSbtPlugin("org.xerial.sbt" % "sbt-pack" % "0.5.1")
packSettings

// [Optional: Mappings from a program name to the corresponding Main class ]
packMain := Map("hello" -> "myprog.Hello")

// sbt commands : pack ; pack-archive

*/

// http://xerial.org/blog/2014/03/24/sbt/



