import 'package:app/features/challenges/data/challenges_database.dart';
import 'package:app/features/challenges/domain/challenges_db.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../domain/challenges_db.dart';

part 'challenges_provider.g.dart';

@riverpod
ChallengesDatabase challengesDatabase(ChallengesDatabaseRef ref) {
  return ChallengesDatabase(ref);
}

@riverpod
Stream<List<Challenges>> challenges(ChallengesRef ref) {
  final database = ref.watch(challengesDatabaseProvider);
  return database.watchChallenges();
}