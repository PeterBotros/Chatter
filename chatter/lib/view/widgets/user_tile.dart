import 'package:flutter/material.dart';
import 'package:chatter/models/user.dart';

class UserTile extends StatelessWidget {
  final User user;
  const UserTile({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: user.avatarUrl.isNotEmpty
            ? NetworkImage(user.avatarUrl)
            : null,
        child: user.avatarUrl.isEmpty ? Icon(Icons.person) : null,
      ),
      title: Text(user.name),
    );
  }
}
