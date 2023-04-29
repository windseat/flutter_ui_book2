// import 'dart:html';
// 예제 따라 하는 중에 윗줄이 자동으로 삽입되면 주석처리

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:market_kurly_ui/constants.dart';
import 'package:market_kurly_ui/models/nav_item.dart';

import 'package:market_kurly_ui/screens/home/home_screen.dart';
import 'package:market_kurly_ui/screens/recommend/recommend_screen.dart';
import 'package:market_kurly_ui/screens/category/category_screen.dart';
import 'package:market_kurly_ui/screens/search/search_screen.dart';
import 'package:market_kurly_ui/screens/my_kurly/my_kurly_screen.dart';

/*
class MainScreens extends StatelessWidget {
  static String routeName = "/main_screens";

  const MainScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("mainScreens"),
      ),
    );
  }
}
*/

//p112
class MainScreens extends StatefulWidget {
  static String routeName = "/main_screens";

  const MainScreens({Key? key}) : super(key: key);

  @override
  State<MainScreens> createState() => _MainScreensState();
}
// 책과 모습이 다르지만, 같은 기능으로 판단되어 일단 자동 완성된 위 코딩 그대로 둔다.
// 책에서는 _MainScreensState createState() => _MainScreensState();

class _MainScreensState extends State<MainScreens> {
  /*
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("mainScreen"),
      ),
    );
  }
  */

  //p116
  int _selectedIndex = 0;
  // _ <- 언더스코어. 변수명앞에 _를 쓰면 이 클래스 안에서만 쓰겠다고 프로그래머가 알려 주는 것

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: const [
          HomeScreen(),
          // import 'package:market_kurly_ui/screens/home/home_screen.dart'; 부터
          RecommendScreen(),
          CategoryScreen(),
          SearchScreen(),
          MyKurlyScreen(),
          // import 'package:market_kurly_ui/screens/my_kurly/my_kurly_screen.dart'; 까지
        ],
      ),

      //p118
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        // 윗줄이 없으면, 선택된 아이콘의 아래에는 label이 표시되는데, 선택되지 않은 아이콘에는 label이 표시되지 않는다.
        selectedItemColor: Colors.purple,
        // 윗줄이 없으면, 선택된 label의 색상이 파란색
        unselectedItemColor: Colors.black,
        currentIndex: _selectedIndex,
        backgroundColor: Colors.white,
        onTap: onTaped,
        // 아래에 메소트 선언
        items: List.generate(
          navItems.length,
          (index) => _buildBottomNavigationBarItem(
            // 아래에 메소트 선언
            icon: navItems[index].icon,
            label: navItems[index].label,
            isActive: navItems[index].id == _selectedIndex ? true : false,
            // 윗줄이 없으면, 아래 _buildBottomNavigationBarItem 위젯에 설정된 대로, 선택된 아이콘의 색상이 Colors.black으로 고정됨
          ),
        ),
      ),
    );
  }

  void onTaped(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  _buildBottomNavigationBarItem({
    String? icon, String? label, bool isActive = false, GestureTapCallback? press}) {

    return BottomNavigationBarItem(
      icon: SizedBox(
        width: 38,
        height: 38,
        child: IconButton(
          onPressed: press,
          icon: SvgPicture.asset(
            icon ?? "assets/icons/star.svg",
            color: isActive ? kPrimaryColor : Colors.black,
          ),
        ),
      ),
      label: label,
    );
  }

}

