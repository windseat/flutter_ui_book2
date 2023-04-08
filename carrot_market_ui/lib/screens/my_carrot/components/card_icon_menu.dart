import 'package:carrot_market_ui/theme.dart';
import 'package:flutter/material.dart';
import 'package:carrot_market_ui/models/icon_menu.dart';

class CardIconMenu extends StatelessWidget {
  const CardIconMenu({Key? key, required this.iconMenuList}) : super(key: key);
  // import 'package:flutter/cupertino.dart'; 등이 있어야 윗줄에 빨간 줄이 안 간다
  // required this.iconMenuList 있어야 my_carrot_screen.dart 에서 iconMenuList: 작동

  final List<IconMenu> iconMenuList;
  // import 'package:carrot_market_ui/models/icon_menu.dart'; 해 줘야 제너릭 자료형에 빨간 줄이 안 간다

  //CardIconMenu({required this.iconMenuList});
  // p54 코딩과는 좀 다르다
  // 안드로이드 스튜디오가 const CardIconMenu({Key? key, required this.iconMenuList}) : super(key: key); 로 강요한다

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: List.generate(
            iconMenuList.length,
              (index) => _buildRowIconItem(
                iconMenuList[index].title, iconMenuList[index].iconData
              ),
          ),
        ),
      ),
    );
  }

  // 위 _buildRowIconItem 빨간 줄 갈 때 빨간 전구 클릭하여 method 만들라고 하면 바로 아래 줄 생성
  // 맨 앞에 Widget 추가
  Widget _buildRowIconItem(String title, IconData iconData) {
    return SizedBox(
    //p54에는 Container로 코딩되어 있으나 Use a 'SizedBox' to add whitespace to a layout. 에러가 표시되어
    //SizedBox로 바꾸었다
      height: 50,
      child: Row(
        children: [
          Icon(iconData, size: 17,),
          const SizedBox(width: 20,),
          Text(title, style: textTheme().titleMedium,)
        ],
      ),
    );
  }
  
}
