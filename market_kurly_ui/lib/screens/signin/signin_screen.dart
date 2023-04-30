import 'package:flutter/material.dart';
import 'package:market_kurly_ui/theme.dart';
import 'package:market_kurly_ui/screens/signin/kurly_sign_form.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";

  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*
      // 클릭한 후 나오는 페이지의 AppBar 모습이 my_kurly_screen 의 모습과 같다.
      appBar: AppBar(
        title: Text("로그인"),
        automaticallyImplyLeading: true,
      ),
      body: Container(),
      */

      //p134
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "로그인",
          style: textTheme().titleMedium?.copyWith(color:Colors.black),
          // subtitle1
          // import 'package:market_kurly_ui/theme.dart';
        ),
        iconTheme: IconThemeData(color: Colors.black),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        bottom: PreferredSize(
          child: Divider(),
          preferredSize: Size.fromHeight(1.0),
        ),
      ),
            
      body: KurlySignForm(),
      // p135에는 KurlySignFrom 으로 되어 있는데 Form 으로 고쳐 줄 것
      // import 'package:market_kurly_ui/screens/signin/kurly_sign_form.dart';
      // kurly_sign_form.dart 의 _buildIdField() 앞 주석 제거해야 입력란이 보인다.
      // _buildPasswordField() 앞 주석도 제거
    );
  }
}
