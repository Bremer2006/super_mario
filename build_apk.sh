#!/usr/bin/env bash
set -e
echo "Building Super Co-Op Bros Android APK..."
if command -v ./gradlew &> /dev/null; then
  ./gradlew assembleDebug
elif command -v gradle &> /dev/null; then
  gradle assembleDebug
else
  echo "Error: Neither ./gradlew nor gradle found on PATH. Open this folder in Android Studio or push to GitHub to run the included GitHub Actions APK builder."
  exit 1
fi
echo "✅ APK successfully generated at: app/build/outputs/apk/debug/app-debug.apk"
