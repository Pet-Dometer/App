import 'package:app/src/data_model/pet_db.dart';

/// The data associated with users.
class UserData {
  UserData({
    required this.id,
    required this.email,
    required this.password,
  });

  String id;
  String email;
  String password;
}

/// Provides access to and operations on all defined users.
class UserDB {
  final List<UserData> _users = [
    UserData(
      id: 'user-001',
      password: 'user1',
      email: 'jennacorindeane@gmail.com',
    ),
    UserData(
      id: 'user-002',
      password: 'user2',
      email: 'jessebeck@gmail.com',
    ),
    UserData(
      id: 'user-003',
      password: 'user3',
      email: 'joanne.amberg@gmail.com',
    ),
    UserData(
      id: 'user-004',
      password: 'user4',
      email: 'johnson@hawaii.edu',
    ),
  ];

  UserData getUser(String userID) {
    return _users.firstWhere((userData) => userData.id == userID);
  }

  List<UserData> getUsers(List<String> userIDs) {
    return _users.where((userData) => userIDs.contains(userData.id)).toList();
  }
}

/// The singleton instance providing access to all user data for clients.
UserDB userDB = UserDB();

/// The currently logged in user.
String currentUserID = 'user-001';