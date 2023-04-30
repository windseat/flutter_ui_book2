import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:market_kurly_ui/screens/components/stack_icon.dart';

class CustomAction extends StatelessWidget {
  const CustomAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Row(
        children: [
          // 지도표시핀 아이콘
          SizedBox(
            width: 38,
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icons/pin.svg",
                color: Colors.white,
              ),
            ),
          ),
          // 쇼핑카트 아이콘
          SizedBox(
            width: 38,
            child: StackIcon(
            // import 'package:market_kurly_ui/screens/components/stack_icon.dart';
              imgPath: "assets/icons/shopping-cart.svg",
              onPressed: () {},
              counter: "2",
            ),
          ),
        ],
      ),
    );
  }
}
