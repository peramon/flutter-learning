import 'package:flutter/material.dart';

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
    );
  }
}
