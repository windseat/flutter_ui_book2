import 'package:carrot_market_ui/models/recommend_store.dart';
import 'package:carrot_market_ui/screens/components/appbar_preferred_size.dart';
import 'package:carrot_market_ui/screens/near_me/components/round_border_text.dart';
import 'package:carrot_market_ui/screens/near_me/components/search_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'components/bottom_title_icon.dart';
import '../../theme.dart';

import 'package:carrot_market_ui/screens/near_me/components/store_item.dart';

class NearMeScreen extends StatelessWidget {
  const NearMeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /*
    return const Center(
      child: Text('nearMeScreen'),
    );
    */

    //p84
    return Scaffold(
      appBar: AppBar(
        title: const Text('내 근처'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.pencil)),
          IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.bell)),
        ],
        bottom: appBarBottomLine(),
        // import 'package:carrot_market_ui/screens/components/appbar_preferred_size.dart';
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: SearchTextField(),
          ),
          SizedBox(
            height: 66,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: searchKeyword.length,
              // searchKeyword 는 import 'package:carrot_market_ui/models/recommend_store.dart';
              itemBuilder: (context, index) {
                return Center(
                  child: RoundBorderText(
                    title: searchKeyword[index],
                    position: index,
                  ),
                );
              },
            ),
          ),
          Divider(
            color: Colors.grey[100],
            thickness: 10.0,
          ),
          
          // p92 책에는 제대로 설명이 안 되어 있지만 여기에 추가하라는 듯
          const Padding(
            padding: EdgeInsets.only(left: 16, top: 30),
            child: Wrap(
              alignment: WrapAlignment.start,
              spacing: 22.0,
              runSpacing: 30,
              children: [
                // import 'components/bottom_title_icon.dart';
                BottomTitleIcon(
                    title: '구인구직', iconData: FontAwesomeIcons.user),
                // import 'package:font_awesome_flutter/font_awesome_flutter.dart';
                BottomTitleIcon(
                    title: '과외/클래스', iconData: FontAwesomeIcons.edit),
                BottomTitleIcon(
                    title: '농수산물', iconData: FontAwesomeIcons.appleAlt),
                BottomTitleIcon(
                    title: '부동산', iconData: FontAwesomeIcons.hotel),
                BottomTitleIcon(
                    title: '중고차', iconData: FontAwesomeIcons.car),
                BottomTitleIcon(
                    title: '전시/행사', iconData: FontAwesomeIcons.chessBishop)
              ],
            ),
          ),
          const SizedBox(height: 50),

          // p97
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text('이웃들의 추천 가게', style: textTheme().headlineMedium),
            // import '../../theme.dart';
          ),
          const SizedBox(height: 20),
          Container(
            // SezedBox 로 교체하라고 추천
            height: 288,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: recommendStoreList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: StoreItem(
                    // import 'package:carrot_market_ui/screens/near_me/components/store_item.dart';
                    recommendStore: recommendStoreList[index],
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
