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
      password: 'foo',
      email: 'johnfoo@gmail.com',
    ),
    UserData(
      id: 'user-002',
      password: 'foo',
      email: 'janefoo@gmail.com',
    ),
    UserData(
      id: 'user-003',
      password: 'foo',
      email: 'joefoog@gmail.com',
    ),
    UserData(
      id: 'user-004',
      password: 'foo',
      email: 'maryfoo@hawaii.edu',
    ),
  ];

  UserData getUser(String userID) {
    return _users.firstWhere((userData) => userData.id == userID);
  }

  List<UserData> getUsers(List<String> userIDs) {
    return _users.where((userData) => userIDs.contains(userData.id)).toList();
  }
}

final userDBProvider = Provider<UserDB>((ref) {
  return UserDB(ref);
});

final currentUserIDProvider = StateProvider<String>((ref) {
  return 'user-001';
});

/// The singleton instance providing access to all user data for clients.
UserDB userDB = UserDB();