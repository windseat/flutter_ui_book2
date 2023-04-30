import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:market_kurly_ui/constants.dart';

// AppBar 우측에 나열 되는 아이콘과 해당 아이콘에 스택아이콘을 표시하는 위젯 -> custom_action.dart 에서 StackIcon() 으로 사용
// 예시, 쇼핑카트 아이콘에 몇개가 담겨 있다고 표시

class StackIcon extends StatelessWidget {
  final String? imgPath;
  final GestureTapCallback? onPressed;
  final String? counter;

  const StackIcon({
    Key? key,
    this.imgPath,
    this.onPressed,
    this.counter
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
    // const Stack 으로 하면, Invalid constant value. 등 관련 에러가 발생
      alignment: Alignment.center,
      children: [
        IconButton(
          onPressed: onPressed,
          icon: SvgPicture.asset(
            imgPath ?? "assets/icons/shopping-cart.svg",
            color: Colors.white,
          ),
        ),
        Positioned(
          top: 10,
          right: 5,
          child: Container(
            width: 14,
            height: 14,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6.0),
            ),
            // The 'child' argument should be last in widget constructor invocations.
            child: Center(
              child: Text(
                "$counter",
                style: const TextStyle(fontSize: 10, color: kPrimaryColor),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
