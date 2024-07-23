import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final focusNode = FocusNode();
    final colors = Theme.of(context).colorScheme;

    return TextFormField(
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      focusNode: focusNode,
      controller: textController,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: colors.primary, width: 3),
            borderRadius: BorderRadius.circular(40)),
        filled: true,
        fillColor: colors.brightness == Brightness.light
            ? colors.primary.withOpacity(0.1)
            : colors.primary.withOpacity(0.5),
        hintText: 'End your message with a "?"',
        suffixIcon: IconButton(
            onPressed: () {
              textController.clear();
            },
            icon: const Icon(Icons.send_rounded)),
      ),
      onFieldSubmitted: (value) {
        textController.clear();
        focusNode.requestFocus();
      },
    );
  }
}
