import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  final ValueChanged<String> onValue;

  const MessageFieldBox({super.key, required this.onValue});

  @override
  Widget build(BuildContext context) {
    // final colors = Theme.of(context).colorScheme;

    final textController = TextEditingController();
    final FocusNode focusNode = FocusNode();

    final outlineInputBorder = UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(40),
    );

    final inputDecoration = InputDecoration(
      hintText: 'End your message with a "??"',
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      filled: true,
      suffixIcon: IconButton(
        onPressed: () {
          final textValue = textController.value.text;
          // print('Text field value: $textValue');
          onValue(textValue);
          textController.clear();
        },
        icon: Icon(Icons.send_outlined),
      ),
    );

    return TextFormField(
      // keyboardType: ,
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        // print('Submit value: $value');
        textController.clear();
        focusNode.requestFocus();
        onValue(value);
      },
      // onChanged: (value) {
      //   print('onChanged: $value');
      // },
    );
  }
}
