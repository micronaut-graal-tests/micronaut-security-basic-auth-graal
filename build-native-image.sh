#!/bin/bash

./gradlew nativeCompile
cp build/native/nativeCompile/security-basic-auth .
