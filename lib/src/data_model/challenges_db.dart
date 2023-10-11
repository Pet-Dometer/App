/// The data associated with users.
class ChallengeData {
  ChallengeData({
    required this.id,
    required this.frequency,
    required this.title,
    required this.complete,
  });

  String id;
  String frequency;
  String title;
  bool complete;
}

/// Provides access to and operations on all defined users.
class ChallengesDB {
  final List<ChallengeData> _challenges = [
    ChallengeData(
      id: 'challenge-001',
      frequency: 'Daily',
      title: 'Walk 10k steps',
      complete: false,
    ),
    ChallengeData(
      id: 'challenge-002',
      frequency: 'Weekly',
      title: 'Walk 70k steps',
      complete: false,
    ),
    ChallengeData(
      id: 'challenge-003',
      frequency: 'Monthly',
      title: 'Walk 50 miles',
      complete: false,
    ),
  ];

  ChallengeData getChallenge(String challengeID) {
    return _challenges.firstWhere((challengeData) => challengeData.id == challengeID);
  }

  List<ChallengeData> getChallenges(List<String> challengeIDs) {
    return _challenges.where((challengeData) => challengeIDs.contains(challengeData.id)).toList();
  }
}

/// The singleton instance providing access to all user data for clients.
ChallengesDB userDB = ChallengesDB();