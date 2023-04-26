import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // Container가 불필요하니, 바로 TextField를 쓰라고 멘트가 뜬다. 노란전구를 이용하여 자동으로 수정할 수 있는데 일단 둬 본다
      child: TextField(
        cursorColor: Colors.grey,
        decoration: InputDecoration(
          disabledBorder: _buildOutLineInputBorder(),
          enabledBorder: _buildOutLineInputBorder(),
          focusedBorder: _buildOutLineInputBorder(),
          filled: true,
          fillColor: Colors.grey[200],
          prefixIcon: const Icon(CupertinoIcons.search, color: Colors.grey,),
          contentPadding: const EdgeInsets.only(left: 0, bottom: 15, top: 15, right: 0),
          hintText: '좌동 주변 가게를 찾아 보세요.',
          hintStyle: const TextStyle(fontSize: 18)
        ),
      ),
    );
  }

  OutlineInputBorder _buildOutLineInputBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(width: 0.5, color: Color(0xFFD4D5DD)),
      borderRadius: BorderRadius.circular(8.0),
    );
  }
}
