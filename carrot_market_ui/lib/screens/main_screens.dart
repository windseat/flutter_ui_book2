import 'package:carrot_market_ui/screens/chatting/chatting_screen.dart';
import 'package:carrot_market_ui/screens/home/home_screen.dart';
import 'package:carrot_market_ui/screens/my_carrot/my_carrot_screen.dart';
import 'package:carrot_market_ui/screens/near_me/near_me_screen.dart';
import 'package:carrot_market_ui/screens/neighborhood_life/neighborhood_life_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MainScreens extends StatefulWidget {
  const MainScreens({Key? key}) : super(key: key);
  // 윗 줄 지우면 빌드시 에러남. 책에는 지워져 있는데 지우면 안 되는 것 같다.

  @override
  State<MainScreens> createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  int _selectedIndex = 0;
  // p23 예시

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // p16, Container() 로 되어 있으나 Scaffold() 로 써 줘야 빌드 됨. 아래도 Scaffold() 에 맞게 수정해야 함.
      // p21 전에 안드로이드 스튜디오가 빌드시 const 를 추천하는데 p21 가서는 const 지워야 빌드가 됨

      /* 앱바의 폰트 기본 색상이 흰색인듯. theme() 에서 설정한 흰색 바탕이어서 텍스트가 안 보여서 한참 헤맸음. 바탕색을 유색으로 주거나 폰트색을 유색으로 처리해야 글자가 보임.
      appBar: AppBar(
        title: const Text('data', style: TextStyle(color: Colors.black)),
      ),

      body: Center(
        child: Text('MainScreens'),
      ),
      */

      //p23
      /*
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          Container(
            color: Colors.orange[100],
            child: const Center(
              child: Text(
                'IndexedStack 1',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ),
          Container(
            color: Colors.redAccent[100],
            child: const Center(
              child: Text(
                'IndexedStack 2',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            label: '홈',
            icon: Icon(CupertinoIcons.home,),
          ),
          BottomNavigationBarItem(
            label: '채팅',
            icon: Icon(CupertinoIcons.chat_bubble,),
          ),
        ],
        onTap: (index) {
          setState(
            () {
              _selectedIndex = index;
            },
          );
        },
        currentIndex: _selectedIndex,
      ),
      */

      //p28
      body: IndexedStack(
        index: _selectedIndex,
        children: const [
          HomeScreen(),
          // 여기까지 따라 코딩했을 때 맨 위에 import 'package:carrot_market_ui/screens/home/home_screen.dart'; 가 자동으로 삽입되었는지 보세요. 없으면 import 해 줘야 합니다.
          NeighborhoodLifeScreen(),
          NearMeScreen(),
          ChattingScreen(),
          MyCarrotScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        // 아래 TIP 추가하기 전까지는 현재 선택된 활성화된 아이콘의 색상은 오렌지색
        // 비활성화된 아이콘의 색상은 그레이

        //p43 TIP 추가
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        // 현재 선택된 활성화된 아이콘의 색상이 블랙으로

        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              label: '홈', icon: Icon(CupertinoIcons.home)),
          BottomNavigationBarItem(
              label: '동네생활', icon: Icon(CupertinoIcons.square_on_square)),
          BottomNavigationBarItem(
              label: '내 근처', icon: Icon(CupertinoIcons.placemark)),
          BottomNavigationBarItem(
              label: '채팅', icon: Icon(CupertinoIcons.chat_bubble_2)),
          BottomNavigationBarItem(
              label: '나의 당근', icon: Icon(CupertinoIcons.person)),
        ],
      ),
    );
  }
}
