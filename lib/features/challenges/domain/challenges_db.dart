/// The data associated with users.
class ChallengeData {
  ChallengeData({
    required this.id,
    required this.frequency,
    required this.challenge,
    required this.complete,
  });

  String id;
  String frequency;
  String challenge;
  bool complete;
}

/// Provides access to and operations on all defined users.
class ChallengesDB {
  final List<ChallengeData> _challenges = [
    ChallengeData(
      id: 'challenge-001',
      frequency: 'Daily',
      challenge: 'Walk 10k steps',
      complete: false,
    ),
    ChallengeData(
      id: 'challenge-002',
      frequency: 'Weekly',
      challenge: 'Walk 70k steps',
      complete: true,
    ),
    ChallengeData(
      id: 'challenge-003',
      frequency: 'Monthly',
      challenge: 'Walk 50 miles',
      complete: false,
    ),
  ];
  List<String> getAllChallenges() {
    return _challenges.map((data) => data.id).toList();
  }

  ChallengeData getChallenge(String challengeID) {
    return _challenges.firstWhere((challengeData) => challengeData.id == challengeID);
  }

  List<ChallengeData> getChallenges(List<String> challengeIDs) {
    return _challenges.where((challengeData) => challengeIDs.contains(challengeData.id)).toList();
  }
}

/// The singleton instance providing access to all user data for clients.
ChallengesDB userDB = ChallengesDB();