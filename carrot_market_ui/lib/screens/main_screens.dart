import 'package:flutter/material.dart';

class MainScreens extends StatefulWidget {
  const MainScreens({Key? key}) : super(key: key);
  // 윗 줄 지우면 빌드시 에러남. 책에는 지워져 있는데 지우면 안 되는 것 같다.

  @override
  State<MainScreens> createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // p16, Container() 로 되어 있으나 Scaffold() 로 써 줘야 빌드 됨. 아래도 Scaffold() 에 맞게 수정해야 함.

      /* 앱바의 폰트 기본 색상이 흰색인 모양. 텍스트가 안 보여서 한참 헤맸음. 바탕색을 유색으로 주거나 폰트색을 유색으로 처리해야 글자가 보임.
      appBar: AppBar(
        title: const Text('data', style: TextStyle(color: Colors.black)),
      ),
      */

      body: Center(
        child: Text('MainScreens'),
      ),
    );
  }
}
