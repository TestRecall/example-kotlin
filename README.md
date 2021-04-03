# Example Kotlin

This repo uses Gradle, JUnit and github actions. You can check out JUnit and
Gradle configuration on [gradle java testing][java_testing]


## Test output

TestRecall uses JUnit XML output and looks in the default locations for those reports. The default JUnit XML output location is `build/test-results/test/TEST-*.xml`.

This can be customized by test task:
```kotlin
// build.gradle.kts
tasks.test {
    reports {
        junitXml.outputLocation.set(layout.buildDirectory.dir("custom-location"))
    }
}
```

Or for the entire project

```kotlin
// build.gradle.kts
project.setProperty("testResultsDirName", "$buildDir/custom-location")
```

Both of these will change the build directory to: `$buildDir/test-results/custom-location`

XML files can be found here: `build/custom-location/test/TEST-*.xml`

[java_testing]: https://docs.gradle.org/current/userguide/java_testing.html
