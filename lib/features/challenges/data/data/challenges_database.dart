import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../repositories-firestore/firestore_path.dart';
import '../../../repositories-firestore/firestore_service.dart';
import '../domain/challenges_db.dart';

/// Provides access to the Firestore database storing [pet] documents.
class ChallengesDatabase {
  ChallengesDatabase(this.ref);

  final ProviderRef<ChallengesDatabase> ref;

  final _service = FirestoreService.instance;

  Stream<List<Pet>> watchChallenges() => _service.watchCollection(
      path: FirestorePath.challenges(),
      builder: (data, documentId) => Challenges.fromJson(data!));

  Stream<Pet> watchChallenge(String petId) => _service.watchDocument(
      path: FirestorePath.challenges(challengeId),
      builder: (data, documentId) => Challenges.fromJson(data!));

  Future<List<Pet>> fetchChallenges() => _service.fetchCollection(
      path: FirestorePath.challenges(),
      builder: (data, documentId) => Pet.fromJson(data!));

  Future<Pet> fetchChallenge(String petId) => _service.fetchDocument(
      path: FirestorePath.challenge(challengeId),
      builder: (data, documentId) => Challenges.fromJson(data!));

  Future<void> setchallenge(Challenges challenge) => _service.setData(
      path: FirestorePath.challenge(challenge.id), data: challenge.toJson());

  Future<void> setchallengeDelayed(Challenges challenge) => Future.delayed(
      const Duration(milliseconds: 2000),
          () => _service.setData(
          path: FirestorePath.challenge(challenge.id), data: challenge.toJson()));

  Future<void> setchallengeError(Challenges challenge) =>
      Future.delayed(const Duration(milliseconds: 2000), () => throw Error());

  Future<void> deletechallenge(Challenges challenge) =>
      _service.deleteData(path: FirestorePath.challenge(challenge.id));
}