import 'package:carrot_market_ui/models/neighborhood_life.dart';
import 'package:carrot_market_ui/screens/neighborhood_life/components/life_header.dart';
import 'package:carrot_market_ui/screens/neighborhood_life/components/life_body.dart';
import 'package:carrot_market_ui/screens/components/appbar_preferred_size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NeighborhoodLifeScreen extends StatelessWidget {
  const NeighborhoodLifeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /*
    return const Center(
      child: Text('neighborhoodLifeScreen'),
    );
    */

    // p68
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('동네생활'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.plus_rectangle),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.bell),
          ),
        ],
        bottom: appBarBottomLine(),
        //import 'package:carrot_market_ui/screens/components/appbar_preferred_size.dart';
      ),
      body: ListView(
        children: [
          const LifeHeader(),
          /*
          Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: LifeBody(
              neighborhoodLife: neighborhoodLifeList[0],
              // life_body.dart 파일에 required this.neighborhoodLife 있어서 neighborhoodLife: 인 듯
            ),
            // import 'package:carrot_market_ui/screens/neighborhood_life/components/life_body.dart';
          ),
          */

          //p80
          // ... 연산자가 뭐더라?
          ... List.generate(
            neighborhoodLifeList.length,
              (index) => Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: LifeBody(
                  neighborhoodLife: neighborhoodLifeList[index],
                ),
              ),
          ),
        ],
      ),
    );
  }
}
