import 'package:carrot_market_ui/theme.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// p47 책의 예제 소스에는 이 부분부터 시작하지 않는다.
// 속성이 자동완성 되려면 이 부분이 있어야 한다.

class MyCarrotHeader extends StatelessWidget {
  const MyCarrotHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        child: Column(
          children: [
            _buildProfileRow(),
            const SizedBox(height: 30,),
            _buildProfileButton(),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildRoundTextButton('판매구역', FontAwesomeIcons.receipt),
                _buildRoundTextButton('구매내역', FontAwesomeIcons.shoppingBag),
                _buildRoundTextButton('관심목록', FontAwesomeIcons.heart),
                // 이 클래스 아래에 위젯을 선언하기 전까지 _buildRoundTextButton 위젯(메서드)에 빨간줄이 표시된다.
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildProfileRow() {
  // return Container(color: Colors.redAccent[100], height: 60,);
  return Row(
    children: [
      Stack(
      // Stack 위젯과 Positioned 위젯을 이용하여 이미지 위에 다른 위젯을 쌓고 꾸며 줄 수 있습니다.
        children: [
          SizedBox(
            width: 65,
            height: 65,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(32.5),
              child: Image.network(
                'https://placeimg.com/200/100/people',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey[100],
              ),
              child: const Icon(
                Icons.camera_alt_outlined,
                size: 15,
              ),
            ),
          ),
        ],
      ),
      const SizedBox(width: 16,),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('developer', style: textTheme().displayMedium,),
          // headline2 대신 displayMedium
          const SizedBox(height: 10,),
          const Text('좌동 #00912'),
        ],
      ),
    ],
  );
}

Widget _buildProfileButton() {
// p48까지 따라하면 The declaration '_buildProfileButton' isn't referenced.
// p51에서 코딩
  //return Container(color: Colors.blue[100], height: 45,);
  return InkWell(
    // InkWell 위젯을 활용하여 onTap 기능을 만들어 줄 수도 있습니다.
    onTap: () {},
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFFD4D5DD),
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(6.0),
      ),
      height: 45,
      child: Center(
        child: Text(
          '프로필기 보기',
          style: textTheme().titleMedium,
          //subtitle1 대신 titleMedium
        ),
      ),
    ),
  );
}

Widget _buildRoundTextButton(String title, IconData iconData) {
  //return Container(color: Colors.orange[100], height: 60, width: 60,);
  return Column(
    children: [
      Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: const Color.fromRGBO(255, 226, 208, 1),
          border: Border.all(color: const Color(0xFFD4D5DD), width: 05),
        ),
        child: Icon(
          iconData,
          color: Colors.orange,
        ),
      ),
      const SizedBox(height: 10,),
      Text(
        title,
        style: textTheme().titleMedium,
        //subtitle1 대신 titleMedium
      )
    ],
  );
}