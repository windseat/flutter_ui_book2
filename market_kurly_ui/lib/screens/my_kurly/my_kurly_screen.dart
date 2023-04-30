import 'package:flutter/material.dart';
import 'package:market_kurly_ui/screens/components/custom_actions.dart';
import 'package:market_kurly_ui/screens/my_kurly/components/my_kurly_body.dart';

// import 'package:market_kurly_ui/screens/my_kurly/components/my_kurly_header.dart';

class MyKurlyScreen extends StatelessWidget {
  const MyKurlyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /*
    return const Scaffold(
      body: Center(
        child: Text("MyKurlyScreen"),
      ),
    );
    */

    //p126
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("마이컬리"),
        actions: [
          CustomAction(),
          // import 'package:market_kurly_ui/screens/components/custom_actions.dart';
        ],
      ),

      //p128까지 따라 한 후 아래 body 부분을 구성하면 화면에 볼 수 있다.
      /*
      body: SingleChildScrollView(
        child: MyKurlyHeader(),
        // import 'package:market_kurly_ui/screens/my_kurly/components/my_kurly_header.dart';
      ),
      */

      //p130
      body: SingleChildScrollView(
        child: MyKurlyBody(),
        // import 'package:market_kurly_ui/screens/my_kurly/components/my_kurly_body.dart';
      ),
    );
  }
}
