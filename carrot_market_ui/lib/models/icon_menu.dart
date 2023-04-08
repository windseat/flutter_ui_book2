import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//import 'package:flutter/material.dart';
//아래 코딩했는데 바로 위 라이브러리는 자동으로 추가가 안 되었다

class IconMenu {
  final String title;
  final IconData iconData;

  IconMenu({required this.title, required this.iconData});
}

final List<IconMenu> iconMenu1 = [
  IconMenu(title: '내 동네 설정', iconData: FontAwesomeIcons.mapMarkedAlt),
  IconMenu(title: '동네 인증하기', iconData: FontAwesomeIcons.compressArrowsAlt),
  IconMenu(title: '키워드 알림', iconData: FontAwesomeIcons.tag),
  IconMenu(title: '모아보기', iconData: FontAwesomeIcons.borderAll),
];

final List<IconMenu> iconMenu2 = [
  IconMenu(title: '동네생활 글', iconData: FontAwesomeIcons.edit),
  IconMenu(title: '동네생활 댓글', iconData: FontAwesomeIcons.commentDots),
  IconMenu(title: '동네생활 주제 목록', iconData: FontAwesomeIcons.star),
];

final List<IconMenu> iconMenu3 = [
  IconMenu(title: '비즈프로필 관리', iconData: FontAwesomeIcons.store),
  IconMenu(title: '지역광고', iconData: FontAwesomeIcons.bullhorn),
];