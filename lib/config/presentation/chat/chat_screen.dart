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
                'https://cdn1.suno.ai/image_9abae681-ecc5-4774-ae3f-0e0de04ac773.png'),
          ),
        ),
        centerTitle: false,
        title: const Text('Darling ♥️'),
      ),
    );
  }
}
