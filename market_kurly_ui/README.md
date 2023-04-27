# market_kurly_ui

모두가 할 수 있는 플러터 UI 실전, 제2장 모두의 컬리 UI 만들어 보기

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

p111 까지 샘플 예제를 입력한 후 실행해 봤는데 다음과 같은 에러를 만난 경우

Launching lib\main.dart on sdk gphone x86 in debug mode...
Running Gradle task 'assembleDebug'...
/C:/Users/winds/AppData/Local/Pub/Cache/hosted/pub.dev/google_fonts-2.3.3/lib/src/google_fonts_base.dart:14:1: Error: 'AssetManifest' is imported from both 'package:flutter/src/services/asset_manifest.dart' and 'package:google_fonts/src/asset_manifest.dart'.
import 'asset_manifest.dart';
^^^^^^^^^^^^^
/C:/Users/winds/AppData/Local/Pub/Cache/hosted/pub.dev/google_fonts-2.3.3/lib/src/google_fonts_base.dart:32:31: Error: 'AssetManifest' is imported from both 'package:flutter/src/services/asset_manifest.dart' and 'package:google_fonts/src/asset_manifest.dart'.
AssetManifest assetManifest = AssetManifest();
^^^^^^^^^^^^^
Target kernel_snapshot failed: Exception

FAILURE: Build failed with an exception.

- Where:
  Script 'C:\SDK\flutter_windows_3.7.6-stable\flutter\packages\flutter_tools\gradle\flutter.gradle' line: 1154

- What went wrong:
  Execution failed for task ':app:compileFlutterBuildDebug'.

  > Process 'command 'C:\SDK\flutter_windows_3.7.6-stable\flutter\bin\flutter.bat'' finished with non-zero exit value 1

- Try:

  > Run with --stacktrace option to get the stack trace.
  > Run with --info or --debug option to get more log output.
  > Run with --scan to get full insights.

- Get more help at https://help.gradle.org

BUILD FAILED in 6s
Exception: Gradle task assembleDebug failed with exit code 1

책에서 와는 달리

pubspec.yaml 에 기입한 google_fonts 버전을 올려 줘야 한다.
2023 04 27 현재, 책에는 2.0.0 인데 2023 04 27 현재 최신 버전인 4.0.4를 입력해 줘야 실행이 된다.
학습하는 날 기준으로 구글에 Flutter googlefonts 정도로 검색하면 최신 버전을 알 수 있다.
