import 'package:flutter/material.dart';

// Placeholder ChatScreen (Firebase removed)
class ChatScreen extends StatelessWidget {
  final String peerId;
  final String peerName;
  const ChatScreen({Key? key, required this.peerId, required this.peerName})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Chat with $peerName')),
      body: Center(child: Text('Chat screen (Firebase removed)')),
    );
  }
}
