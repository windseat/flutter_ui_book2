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

/* p17. 기존 코드. textTheme 속성때문에 정의가 안 되고 빌드시 에러. 플러터 업그레이드시 titleTextStyle: 로 변경된 듯
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

// 위 기존 코드를 수정한 코드
AppBarTheme appTheme() {
  return AppBarTheme(
    centerTitle: false,
    color: Colors.white,
    // 앱바 배경색
    // 앱바의 기본 배경은 파란색, 기본 폰트색은 흰색
    // 배경색을 white 로 하고, 처음 따라하기 했을 때는 폰트가 화이트로 나와서 애먹었는데 다시 따라하니 별다른 처리를 안 해도 블랙으로 잘 나왔다.
    // 어딘가 코딩을 잘못한 곳이 있었나?
    elevation: 0.0,
    // 앱바 아래로 그림자 효과를 없앤다
    titleTextStyle: textTheme().titleLarge,
    // titleTextStyle: textTheme().headline6 를 안드로이드 스튜디오가 추천하는 대로 수정
  );
}

// ThemeData 타입의 theme() 메소드
ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    textTheme: textTheme(),
    appBarTheme: appTheme(),

    // primaryColor: Colors.orange,
    // p25 이미지에는 하단바의 아이콘이 오렌지색으로 나온다. 이 부분이 영향을 줄 것이라 예상했으나 디폴트 색상이라고 생각되는 파란색으로 현재 위치 아이콘이 표시된다.
    
    primarySwatch: Colors.orange,
    // primaryColor 대신에 사용하니 현재 위치 아이콘이 주황색으로 표시
  );
}