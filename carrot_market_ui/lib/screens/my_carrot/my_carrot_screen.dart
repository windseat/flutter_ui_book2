import 'package:flutter/material.dart';

import 'components/my_carrot_header.dart';
// p47의 이미지를 보기 위해 MyCarrotHeader(), 적용하려면 필요

class MyCarrotScreen extends StatelessWidget {
  const MyCarrotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('나의 당근'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
          ),
        ],
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(0.5),
          child: Divider(
            thickness: 0.5,
            height: 0.5,
            color: Colors.grey,
          ),
        ),
      ),
      body: ListView(
        children: const [
          MyCarrotHeader(),
          //p47의 이미지를 보려면 p45 의 빨간 주석 들어 있는 줄 미리 코딩해야 함
          SizedBox(height: 8.0,),
          //CardIconMenu(iconMenuList: iconMenu1),
          SizedBox(height: 8.0,),
          //CardIconMenu(iconMenuList: iconMenu1),
          SizedBox(height: 8.0,),
          //CardIconMenu(iconMenuList: iconMenu1),
        ],
      ),
    );
  }
}
