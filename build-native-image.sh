./gradlew assemble
native-image --no-fallback --class-path build/libs/micronaut-security-basicauth-graal-0.1-all.jar
