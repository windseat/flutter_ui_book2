import 'package:carrot_market_ui/models/product.dart';
import 'package:carrot_market_ui/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            product.title,
            style: textTheme().bodyLarge,
            // bodyText1 대신 bodyLarge
          ),
          const SizedBox(height: 4.0),
          Text('${product.address} · ${product.publishedAt}'),
          // · <- 가운데점은 ㄱ 입력후 한자키 누르면 찾을 수 있음
          const SizedBox(height: 4.0),
          Text(
            '${numberFormat(product.price)}원',
            style: textTheme().displayMedium,
            // headline2 대신 displayMedium
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Visibility(
                visible: product.commentsCount > 0,
                child: _buildIcons(
                  product.commentsCount,
                  CupertinoIcons.chat_bubble_2,
                ),
              ),
              const SizedBox(width: 8.0,),
              Visibility(
                visible: product.heartCount > 0,
                child: _buildIcons(
                  product.heartCount,
                  CupertinoIcons.heart,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

String numberFormat(String price) {
  final formatter = NumberFormat('#,###');
  return formatter.format(int.parse(price));
}

Widget _buildIcons(int count, IconData iconData) {
  return Row(
    children: [
      Icon(iconData, size: 14.0,),
      const SizedBox(width: 4.0,),
      Text('$count'),
    ],
  );
}