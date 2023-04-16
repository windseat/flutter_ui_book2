import 'package:carrot_market_ui/screens/components/image_container.dart';
import 'package:flutter/material.dart';

import 'package:carrot_market_ui/models/neighborhood_life.dart';
import 'package:carrot_market_ui/theme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LifeBody extends StatelessWidget {
  final NeighborhoodLife neighborhoodLife;

  const LifeBody({Key? key, required this.neighborhoodLife}) : super(key: key);

  // LifeBody 에 빨간줄이 가는데, Key? key, required this.neighborhoodLife 적어 주면 없어짐

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            width: 0.5,
            color: Color(0xFFD4D5DD),
          ),
        ),
      ),
      child: Column(
        children: [
          _buildTop(),
          _buildWriter(),
          _buildWriting(),
          _buildImage(),
          Divider(
            height: 1,
            thickness: 1,
            color: Colors.grey[300],
          ),
          _buildTail(neighborhoodLife.commentCount),
        ],
      ),
    );
  }

  // 주의, Padding _buildTop() 같은 위젯들이 class LifeBody 안에 설정되어야 한다.
  Padding _buildTop() {
    /*
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 16,
      ),
      child: Container(
        color: Colors.orange[100],
        height: 30,
      ),
    );
    */

    //p74
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.all(4),
            decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(4)),
              color: Color.fromRGBO(247, 247, 247, 1),
            ),
            child: Text(
              neighborhoodLife.category,
              style: textTheme().bodyMedium,
            ),
          ),
          Text(
            neighborhoodLife.date,
            style: textTheme().bodyMedium,
          ),
        ],
      ),
    );
  }

  Padding _buildWriter() {
    /*
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        color: Colors.red[100],
        height: 30,
      ),
    );
    */

    //p75
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          ImageContainer(
              borderRadius: 15,
              imageUrl: neighborhoodLife.profileImgUri,
              width: 30,
              height: 30),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: ' ${neighborhoodLife.userName}',
                  // ' 다음에 공백이 없으면 연한 노란색? 밑줄이 간다. S{} 없이 neighborhoodLife.userName만 써도 된다고.
                  style: textTheme().bodyLarge
                ),
                TextSpan(text: ' ${neighborhoodLife.location}'),
                TextSpan(text: '인증 ${neighborhoodLife.authCount}회'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding _buildWriting() {
    /*
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Container(
        color: Colors.blue[100],
        height: 50,
      ),
    );
    */

    //p76
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          neighborhoodLife.content,
          style: textTheme().bodyLarge,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.start,
        ),
      ),
    );
  }

  /*
  _buildImage() {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
      child: Container(
        color: Colors.black,
        height: 150,
      ),
    );
  }
  */

  //p77
  Visibility _buildImage() {
    return Visibility(
      visible: neighborhoodLife.contentImgUri != '',
      //  != '' <- 값이 없음이 아니라면 ... 즉, 값이 있다면.
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
        child: Image.network(
          neighborhoodLife.contentImgUri,
          height: 200,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Padding _buildTail(int commentCount) {
    return Padding(
      padding: const EdgeInsets.all(16),
      /*
      child: Container(
        color: Colors.lime[100],
        height: 30,
      ),
      */

      //p78
      child: Row(
        children: [
          const Icon(
            FontAwesomeIcons.smile,
            color: Colors.grey,
            size: 22,
          ),
          const SizedBox(width: 8,),
          const Text(
            '공감하기',
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
          const SizedBox(width: 22,),
          const Icon(
            FontAwesomeIcons.commentAlt,
            color: Colors.grey,
            size: 22,
          ),
          const SizedBox(width: 8,),
          Text(
            "${"댓글 쓰기"} $commentCount",
            // '댓글쓰기 $commentCount', <- 보통 이렇게 쓰지 싶은데 책에서는 위처럼 썼다. 표현방법은 여러가지인 모양.
            style: const TextStyle(fontSize: 16, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
