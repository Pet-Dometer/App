import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';
import 'package:flutter/services.dart';

part 'challenges_db.freezed.dart';
part 'challenges_db.g.dart';

/// The data associated with challenges.
@Freezed()
class Challenges with _$Challenges {
  const factory Challenges({
    required String id,
    required String frequency,
    required String challenge,
    required bool complete,
  }) = _Challenges;

  const Challenges._();

  factory Challenges.fromJson(Map<String, dynamic> json) => _$ChallengesFromJson(json);

  static Future<List<Challenges>> checkInitialData() async {
  String content =
  await rootBundle.loadString("assets/initialData/challenges.json");
  List<dynamic> initialData = json.decode(content);
  return initialData.map((jsonData) => Challenges.fromJson(jsonData)).toList();
  }
}

/// Provides access to and operations on all defined users.
// class ChallengesDB {
//   final List<ChallengeData> _challenges = [
//     ChallengeData(
//       id: 'challenge-001',
//       frequency: 'Daily',
//       challenge: 'Walk 10k steps',
//       complete: false,
//     ),
//     ChallengeData(
//       id: 'challenge-002',
//       frequency: 'Weekly',
//       challenge: 'Walk 70k steps',
//       complete: true,
//     ),
//     ChallengeData(
//       id: 'challenge-003',
//       frequency: 'Monthly',
//       challenge: 'Walk 50 miles',
//       complete: false,
//     ),
//   ];
//   List<String> getAllChallenges() {
//     return _challenges.map((data) => data.id).toList();
//   }
//
//   ChallengeData getChallenge(String challengeID) {
//     return _challenges.firstWhere((challengeData) => challengeData.id == challengeID);
//   }
//
//   List<ChallengeData> getChallenges(List<String> challengeIDs) {
//     return _challenges.where((challengeData) => challengeIDs.contains(challengeData.id)).toList();
//   }
// }
//
// /// The singleton instance providing access to all user data for clients.
// ChallengesDB userDB = ChallengesDB();