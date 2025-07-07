import 'package:chatter/models/user.dart';

class UserService {
  // Example: fetch users from a backend or local list
  List<User> getUsers() {
    return [
      User(id: '1', name: 'Alice', avatarUrl: ''),
      User(id: '2', name: 'Bob', avatarUrl: ''),
    ];
  }
}
