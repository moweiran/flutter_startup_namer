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

测试db_test.dart
flutter run lib/db_test.dart

# shared preferences 共享设置
Supported types
Only primitive types can be used: int, double, bool, string, and stringList.
It’s not designed to store a lot of data.

# camera 照相机插件
```
For android, You must have to update minSdkVersion to 21 (or higher).
修改路径 android/app/build.gradle的配置
android {
    defaultConfig {
        minSdkVersion 21
    }
}
On iOS, lines below have to be added inside ios/Runner/Info.plist in order the access the 
<key>NSCameraUsageDescription</key>
<string>Explanation on why the camera access is needed.</string>
```
# fluwx 微信相关操作
## fluwx2.3.0 需要设置android/build.gradle 中
```
ext.kotlin_version = '1.3.71'// fluwx2.3.0 要求kotlin1.3.71
```