# startup_namer

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# Demo Install
1. Flutter SDK 1.20.3-stable
2. Place then contained flutter in the 'D:\src\flutter'
3. set evvironment variables path 
4. flutter doctor


# Fake Online REST API for Testing and Prototyping
https://jsonplaceholder.typicode.com/

æµ‹è¯•db_test.dart
flutter run lib/db_test.dart

# shared preferences 
Supported types
Only primitive types can be used: int, double, bool, string, and stringList.
Itâ€™s not designed to store a lot of data.

# camera
## tip
```
For android, You must have to update minSdkVersion to 21 (or higher).
ÐÞ¸ÄµÄÊÇ<project name>/android/app/build.gradle minSdkVersion
On iOS, lines below have to be added inside ios/Runner/Info.plist in order the access the camera.
<key>NSCameraUsageDescription</key>
<string>Explanation on why the camera access is needed.</string>
```