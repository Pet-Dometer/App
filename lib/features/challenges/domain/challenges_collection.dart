import 'package:app/features/challenges/domain/challenges_db.dart';

class ChallengesCollection {
  ChallengesCollection(challenges) : _challenges = challenges;

  final List<Challenges> _challenges;

  Challenges getChallenge(String challengeID) {
    return _challenges.firstWhere((challengeData) => challengeData.id == challengeID);
  }

  List getChallengeIDs() {
    return _challenges.map((data) => data.id).toList();
  }

}