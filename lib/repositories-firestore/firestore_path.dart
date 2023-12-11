/// Defines the domain model path strings for [FirestoreService].
class FirestorePath {
  static String user(String userID) => 'users/$userID';
  static String users() => 'users';
  static String pet(String petID) => 'pets/$petID';
  static String pets() => 'pets';
  static String challenge(String challengeID) => 'challenges/$challengeID';
  static String challenges() => 'challenges';
  static String history(String historyID) => 'history/$historyID';
  static String histories() => 'history';
}