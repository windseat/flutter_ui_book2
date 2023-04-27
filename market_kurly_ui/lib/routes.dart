// import 'dart:js';
// 코딩을 따라하다 보면 윗 줄이 자동으로 추가 되는데 필요없다.

import 'package:flutter/material.dart';
import 'package:market_kurly_ui/screens/main_screens.dart';
import 'package:market_kurly_ui/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> route = {
  SplashScreen.routeName: (context) => SplashScreen(),
  MainScreens.routeName: (context) => MainScreens(),
};