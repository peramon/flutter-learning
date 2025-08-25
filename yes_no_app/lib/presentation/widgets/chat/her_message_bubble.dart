import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          // height: 10,
          // width: 10,
          decoration: BoxDecoration(
            color: colors.tertiary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Hi brother.', style: TextStyle(color: Colors.white)),
          ),
        ),

        SizedBox(height: 5),

        _ImageBubble(),
        const SizedBox(height: 10),
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // print(size);

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        'https://media0.giphy.com/media/v1.Y2lkPTc5MGI3NjExbjcza2Jocnd2bmJhNGFkZTIxdWgycDA4cmwxZnphZm5wZ3RjYXQwaiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/4OV1bLOIWwIXRxpXlN/giphy.gif',
        width: size.width * 0.7,
        height: 150,
        fit: BoxFit.cover,
      ),
    );
  }
}
