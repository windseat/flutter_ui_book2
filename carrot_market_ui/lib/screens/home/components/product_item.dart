import 'package:carrot_market_ui/models/product.dart';
import 'package:carrot_market_ui/screens/home/components/product_detail.dart';
import 'package:flutter/cupertino.dart';
// p38 예제를 따라 하다 보니 위 import가 자동으로 생성.

import 'package:flutter/material.dart';
//아마도 이것도 필요하지 싶어서 넣었다.

class ProductItem extends StatelessWidget {
  const ProductItem({required Key? key, required this.product}) : super(key: key);

  final Product product;

  // const ProductItem({required this.product});
  // p38 예제에는 위 코드가 적혀 있으나 아래의 에러가 발생하여 {required Key? key, required this.product} 로 수정함
  // Constructors in '@immutable' classes should be declared as 'const'.
  // Constructors for public widgets should have a named 'key' parameter.

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135.0,
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.network(
              product.urlToImage,
              width: 115,
              height: 115,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 16.0,),

          ProductDetail(product: product),
          // p40 예제 작성후 주석 푸는 부분
          // import 'package:carrot_market_ui/screens/home/components/product_detail.dart'; 도 필요
        ],
      ),
    );
  }
}
