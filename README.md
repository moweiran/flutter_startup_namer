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

## Demo Install

1. Flutter SDK 1.20.3-stable
2. Place then contained flutter in the 'D:\src\flutter'
3. set evvironment variables path
4. flutter doctor

## Fake Online REST API for Testing and Prototyping

<https://jsonplaceholder.typicode.com/>

测试
flutter run lib/db_test.dart

## shared preferences

Supported types
Only primitive types can be used: int, double, bool, string, and stringList.
it not designed to store a lot of data.

## camera

```
For android, You must have to update minSdkVersion to 21 (or higher).
 android/app/build.gradle
android {
    defaultConfig {
        minSdkVersion 21
    }
}
On iOS, lines below have to be added inside ios/Runner/Info.plist in order the access the 
<key>NSCameraUsageDescription</key>
<string>Explanation on why the camera access is needed.</string>
```

## fluwx

<https://github.com/OpenFlutter/fluwx>
fluwx2.3.0

```
ext.kotlin_version = '1.3.71'// fluwx2.3.0 要求kotlin1.3.71
```

## 启动项目

按F5启动，并且自动热更新

## 升级Flutter版本

手册：
<https://flutter.dev/docs/development/tools/sdk/upgrading>

```

flutter --version
打印
Flutter 1.22.4 • channel stable • https://github.com/flutter/flutter.git
Framework • revision 1aafb3a8b9 (2 weeks ago) • 2020-11-13 09:59:28 -0800
Engine • revision 2c956a31c0
Tools • Dart 2.10.4

flutter upgrade 升级sdk
flutter pub upgrade 升级包
```

## 序列化

<https://flutterchina.club/json>
由于Flutter禁用运行时反射，所以在Flutter中是没有GSON，Jackson这类解析JSON的库。
一次性生成
flutter packages pub run build_runner
持续生成
flutter packages pub run build_runner watch

## http

 <https://github.com/flutterchina/dio/blob/master/README-ZH.md>


 [flutter_camera_ml_vision: ^2.2.4](https://github.com/rushio-consulting/flutter_camera_ml_vision)
 [file_picker: ^2.1.0](https://github.com/miguelpruivo/flutter_file_picker)
 需要调整gradle版本为
3.3.3
3.4.3
3.5.4
3.6.4
4.0.1
中的一个

引用library冲突了，如何解决
