import 'package:flutter/material.dart';
import 'package:chatter/services/user_service.dart';
import 'package:chatter/view/widgets/user_tile.dart';

import 'package:chatter/view/pages/chat_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chatter Home'),
        centerTitle: true,
        // No logout action
      ),
      body: Builder(
        builder: (context) {
          final users = UserService().getUsers();
          if (users.isEmpty) return Center(child: Text('No users found'));
          return ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => ChatScreen(
                        peerId: users[index].id,
                        peerName: users[index].name,
                      ),
                    ),
                  );
                },
                child: UserTile(user: users[index]),
              );
            },
          );
        },
      ),
    );
  }
}
