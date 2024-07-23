import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return TextFormField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: colors.primary, width: 3),
            borderRadius: BorderRadius.circular(20)),
        filled: true,
        fillColor: colors.brightness == Brightness.light
            ? colors.primary.withOpacity(0.1)
            : colors.primary.withOpacity(0.5),
        hintText: 'Type a message',
        suffixIcon:
            IconButton(onPressed: () {}, icon: const Icon(Icons.send_rounded)),
      ),
    );
  }
}
