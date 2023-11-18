/// Defines the domain model path strings for [FirestoreService].
class FirestorePath {
  static String user(String userID) => 'users/$userID';
  static String users() => 'users';
  static String pet(String userID) => 'pets/$userID';
  static String pets() => 'users';
}