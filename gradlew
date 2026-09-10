#!/bin/sh
# Gradle start-up script placeholder — GitHub Actions will generate proper wrapper if needed
DIR="$(cd "$(dirname "$0")" && pwd)"
if [ -f "$DIR/gradle/wrapper/gradle-wrapper.jar" ]; then
  exec java -jar "$DIR/gradle/wrapper/gradle-wrapper.jar" "$@"
fi
echo "Wrapper jar missing — run: gradle wrapper"
exit 1
