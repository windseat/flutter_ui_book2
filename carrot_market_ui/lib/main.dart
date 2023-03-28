import 'package:flutter/material.dart';

import 'package:carrot_market_ui/screens/main_screens.dart';
import 'package:carrot_market_ui/theme.dart';

void main() {
  runApp(const CarrotMarketUI());
}

class CarrotMarketUI extends StatelessWidget {
  const CarrotMarketUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'carrot_market_ui',
      debugShowCheckedModeBanner: false,
      home: const MainScreens(),
      theme: theme(),
      // 타이핑을 하는 중에 노란 전구가 하란대로 return const MaterialApp() 로 하면
      // 빌드시 theme() 가 const 가 아니다 (error: Invalid constant value. (invalid_constant at [carrot_market_ui] lib\main.dart:19) 라는 에러가 난다.
      // MaterialApp() - appBar: 의 본래 테마는 파란 바탕에 흰색 폰트인데, theme.dart 에서 흰 바탕에 검정색 폰트로 정의
    );
  }
}
