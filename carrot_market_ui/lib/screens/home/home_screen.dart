import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:carrot_market_ui/theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    /*
    return const Center(
      child: Text('homeScreen'),
    );
    */

    //p32
    /*
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen appBar 영역(index:0)'),
      ),
      body: Container(
        color: Colors.orange[100],
        child: Center(
          child: Text(
            'HomeScreen body 영역(index:0)',
            style: textTheme().displayMedium,
            // style: textTheme().headline2,
          ),
        ),
      ),
    );
    */

    //p33
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Text('좌동'),
            SizedBox(width: 4.0,),
            Icon(
              CupertinoIcons.chevron_down,
              size: 15.0,
            )
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.search)),
          IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.list_dash)),
          IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.bell)),
        ],
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(0.5),
          child: Divider(
            thickness: 0.5, height: 0.5, color: Colors.grey,
          ),
        ),
      ),
      body: Container(),
    );
  }
}
