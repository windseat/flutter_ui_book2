import 'package:flutter/material.dart';
import 'package:market_kurly_ui/constants.dart';
import 'package:market_kurly_ui/theme.dart';

class DefaultButton extends StatelessWidget {
  final String? text;
  final GestureTapCallback? press;
  final Color color;

  const DefaultButton({
    Key? key,
    this.text,
    this.press,
    this.color = kPrimaryColor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        // 'primary' is deprecated and shouldn't be used. Use backgroundColor instead. This feature was deprecated after v3.1.0.
        padding: const EdgeInsets.all(16),
      ),
      onPressed: press,
      child: Center(
        child: Text(
          text ?? "",
          style: textTheme().titleMedium,
        ),
      ),
    );
  }
}
