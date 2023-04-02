import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:carrot_market_ui/models/product.dart';
import 'package:carrot_market_ui/screens/home/components/product_item.dart';

//import 'package:carrot_market_ui/theme.dart';
//p32에는 필요했는데, p42에는 사용안함으로 표시되어 주석처리 함

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
      //body: Container(),
      //위 소스는 p34까지 따라한 것

      //p38 사진 모습 보기 위해 /models/product.dart 만들고 아래에 p42의 소스를 먼저 따라함
      body: ListView.separated(
        separatorBuilder: (context, index) => const Divider(
          height: 0,
          indent: 16,
          color: Colors.grey,
        ),
        itemBuilder: (context, index) {
          return ProductItem(
            key: key,
            // 소스코드에는 윗줄이 없으나 에러 나서 넣었음
            product: productList[index],
          );
        },
        itemCount: productList.length,
      ),
    );
  }
}
