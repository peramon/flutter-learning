import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://m.media-amazon.com/images/I/51rayl0HnRL._UF1000,1000_QL80_.jpg',
            ),
          ),
        ),
        title: Text('Pirat'),
        centerTitle: true,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  // return Text('Indice $index');
                  return (index % 2 == 0)
                      ? const HerMessageBubble()
                      : MyMessageBubble();
                },
              ),
            ),
            // Text('Hi'),
            // Caja de texto de mensajes
            MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}
