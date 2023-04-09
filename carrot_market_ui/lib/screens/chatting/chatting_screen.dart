import 'package:carrot_market_ui/models/chat_message.dart';
import 'package:carrot_market_ui/screens/chatting/components/chat_container.dart';
import 'package:carrot_market_ui/screens/components/appbar_preferred_size.dart';
import 'package:flutter/material.dart';

class ChattingScreen extends StatelessWidget {
  const ChattingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /*
    return const Center(
      child: Text('chattingScreen'),
    );
    */

    // p60
    return Scaffold(
      appBar: AppBar(
        title: const Text('채팅'),
        bottom: appBarBottomLine(),
        // screens/components/appbar_preferred_size.dart
      ),
      body: ListView(
        children: List.generate(chatMessageList.length,
            (index) => ChatContainer(chatMessage: chatMessageList[index])),
            // models/chat_message.dart -> chatMessageList
      ),
    );
  }
}
