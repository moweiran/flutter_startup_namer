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

娴�??瘯db_test.dart
flutter run lib/db_test.dart

# shared preferences 鍏变韩璁剧疆
Supported types
Only primitive types can be used: int, double, bool, string, and stringList.
It鈥檚 not designed to store a lot of data.

# camera 鐓х浉鏈烘彃浠�?
```
For android, You must have to update minSdkVersion to 21 (or higher).
淇�鏀硅矾寰� android/app/build.gradle鐨勯厤缃�?
android {
    defaultConfig {
        minSdkVersion 21
    }
}
On iOS, lines below have to be added inside ios/Runner/Info.plist in order the access the 
<key>NSCameraUsageDescription</key>
<string>Explanation on why the camera access is needed.</string>
```
# fluwx 寰�淇＄浉鍏�?搷浣�?
## fluwx2.3.0 闇€瑕佽�剧疆android/build.gradle 涓�
```
ext.kotlin_version = '1.3.71'// fluwx2.3.0 瑕佹眰kotlin1.3.71
```