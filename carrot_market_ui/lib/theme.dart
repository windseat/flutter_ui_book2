import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextTheme textTheme() {
// textTheme() 이 호출되면 아래 TextTheme() 를 반환한다. 이때 displayLarge 등 TextTheme 에 정의된 파라미터를 아래의 내용으로 재정의하여 반환한다.
  return TextTheme(
    displayLarge: GoogleFonts.openSans(fontSize: 18.0, color: Colors.black),
    // p17. headline1 으로 되어 있으나, 가운데 줄이 그어져서 노란 전구가 추천하는 속성으로 바꾼 것
    displayMedium: GoogleFonts.openSans(fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.bold),
    // headline2
    bodyLarge: GoogleFonts.openSans(fontSize: 16.0, color: Colors.black),
    // bodyText1
    bodyMedium: GoogleFonts.openSans(fontSize: 14.0, color: Colors.grey),
    // bodyText2 <- Text 위젯에 style 속성을 사용하지 않으면 p18의 표중 Body 2의 스타일로 정의 됨. 플러터에서는 Body 2를 bodyText2로 표기 함.
    titleMedium: GoogleFonts.openSans(fontSize: 15.0, color: Colors.black),
    // subtitle1
  );
}

/* p17. 기존 코드. textTheme 속성때문에 정의가 안 되고 빌드시 에러. 플러터 업그레이드시 변경된 듯
AppBarTheme appTheme() {
  return AppBarTheme(
    centerTitle: false,
    color: Colors.white,
    elevation: 0.0,
    textTheme: TextTheme(
      titleLarge: GoogleFonts.nanumGothic(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black),
      // headline6
    ),
  );
}
*/

// 위 부분 수정 코드
AppBarTheme appTheme() {
  return AppBarTheme(
    centerTitle: false,
    color: Colors.white,
    // 앱바 배경색.
    // 앱바의 폰트색상은 기본 white 인 모양. 배경색을 white로 한 경우, 폰트색상은 유색으로 처리해야 글자가 보임.
    elevation: 0.0,
    titleTextStyle: textTheme().titleLarge,
    // titleTextStyle: textTheme().headline6 를 수정
  );
}

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    textTheme: textTheme(),
    appBarTheme: appTheme(),
  );
}