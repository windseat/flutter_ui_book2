import 'package:flutter/material.dart';

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
