import 'package:app/features/pet/data/challenges_database.dart';
import 'package:app/features/pet/domain/pet_db.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
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