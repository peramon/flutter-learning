import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messageList = [
    Message(text: 'Hi candy', fromWho: FromWho.mine),
    Message(text: 'how are you ?', fromWho: FromWho.mine),
  ];

  Future<void> sendMessage(String text) async {
    // TODO implement sendMessage

  }
}
