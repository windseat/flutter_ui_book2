class NaveItem {
  final int id;
  final String label;
  final String icon;

  NaveItem({
    required this.id,
    required this.label,
    required this.icon,
  });
}

List<NaveItem> navItems = [
  NaveItem(id: 0, label: "홈", icon: "assets/icons/home.svg"),
  NaveItem(id: 1, label: "추천", icon: "assets/icons/star.svg"),
  NaveItem(id: 2, label: "카테고리", icon: "assets/icons/square.svg"),
  NaveItem(id: 3, label: "검색", icon: "assets/icons/loupe.svg"),
  NaveItem(id: 4, label: "마이컬리", icon: "assets/icons/user.svg"),
];