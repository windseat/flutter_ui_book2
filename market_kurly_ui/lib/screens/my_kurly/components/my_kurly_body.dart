import 'package:flutter/material.dart';
import 'package:market_kurly_ui/models/text_menu.dart';
import 'package:market_kurly_ui/screens/components/text_menu_card.dart';
import 'package:market_kurly_ui/screens/my_kurly/components/my_kurly_header.dart';

class MyKurlyBody extends StatelessWidget {
  const MyKurlyBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyKurlyHeader(),
        // import 'package:market_kurly_ui/screens/my_kurly/components/my_kurly_header.dart';
        buildPaddingTextMenuCard("비회원 주문 조회", () {}),
        // make method
        SizedBox(
          height: 330,
          child: ListView.separated(
            physics: ClampingScrollPhysics(),
            itemBuilder: (context, index) => SizedBox(
              height: 55,
              child: TextMenuCard(
              // import 'package:market_kurly_ui/screens/components/text_menu_card.dart';
                title: textMenuList[index].text,
                // import 'package:market_kurly_ui/models/text_menu.dart';
                icon: textMenuList[index].icon,
                press: () {},
              ),
            ),
            separatorBuilder: (context, index) => Divider(
              height: 0,
            ),
            itemCount: textMenuList.length,
          ),
        ),
        buildPaddingTextMenuCard("컬리 소개 - 2", () {})
      ],
    );
  }

  Padding buildPaddingTextMenuCard(
    String text,
    GestureTapCallback press
    ) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.0),
      child: SizedBox(
        height: 55,
        child: TextMenuCard(
          title: text,
          icon: "assets/icons/right-arrow.svg",
          press: press,
          textColor: Colors.black,
        ),
      ),
    );
  }
}
