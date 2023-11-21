import 'user.dart';

class UserCollection {
  UserCollection(users) : _users = users;

  final List<User> _users;

  int size() {
    return _users.length;
  }

  User getUser(String userID) {
    return _users.firstWhere((userData) => userData.id == userID);
  }

  List<User> getUsers(List<String> userIDs) {
    return _users.where((userData) => userIDs.contains(userData.id)).toList();
  }

  String getUserID(String emailOrUsername) {
    return _users
        .firstWhere((userData) => userData.email == emailOrUsername)
        .id;
  }

  bool isUserEmail(String email) {
    List<String> emails = _users.map((userData) => userData.email).toList();
    return emails.contains(email);
  }
}