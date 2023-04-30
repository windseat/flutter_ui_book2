// import 'dart:js';
// 코딩을 따라하다 보면 윗 줄이 자동으로 추가 되는데, 빌드시 에러가 난다. 주석처리 필요.

import 'package:flutter/material.dart';

import 'package:market_kurly_ui/screens/main_screens.dart';
import 'package:market_kurly_ui/screens/signin/signin_screen.dart';
import 'package:market_kurly_ui/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> route = {
  SplashScreen.routeName: (context) => SplashScreen(),
  MainScreens.routeName: (context) => MainScreens(),
  SignInScreen.routeName: (context) => SignInScreen(),
};