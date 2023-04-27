import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//p110
import 'package:market_kurly_ui/constants.dart';
import 'package:market_kurly_ui/screens/main_screens.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";

  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /*
    return Container(
      child: const Center(
        child: Text("SplashScreen"),
      ),
    );
    */

    //p110
    return Scaffold(
      backgroundColor: kPrimaryColor,
      //import 'package:market_kurly_ui/constants.dart';

      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 5,
              child: Center(
                child: Text(
                  "Kurly",
                  style: GoogleFonts.pacifico(fontSize: 28, color: Colors.white),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.all(24),
                child: TextButton(
                  child: Text("Continue"),
                  onPressed: () {
                    _completeSplash(context, MainScreens());
                    // create method
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // void _completeSplash(BuildContext context, MainScreens mainScreens) {}
  // _completeSplash 에서 create method 했을 때 자동으로 생성된 코드
  
  //p111
  void _completeSplash(BuildContext context, Widget widget) {
    Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (BuildContext context) => widget)
    );
  }
}
