import 'package:app/features/pet/domain/pet_db.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'pet/data/pet_provider.dart';
import 'user/data/user_providers.dart';
import 'challenges/data/challenges_provider.dart';
import 'package:app/features/challenges/domain/challenges_db.dart';
import 'user/domain/user.dart';

part 'all_data_provider.g.dart';

// Based on: https://stackoverflow.com/questions/69929734/combining-futureproviders-using-a-futureprovider-riverpod

class AllData {
  AllData(
      {
        required this.users,
        required this.pets,
        required this.challenges,
        required this.currentUserID});

  final List<User> users;
  final List<Pet> pets;
  final List<Challenges> challenges;
  final String currentUserID;
}

@riverpod
Future<AllData> allData(AllDataRef ref) async {
  final users = ref.watch(usersProvider.future);
  final pets = ref.watch(petsProvider.future);
  final challenges = ref.watch(challengesProvider.future);
  final currentUserID = ref.watch(currentUserIDProvider);
  return AllData(
      users: await users,
      pets: await pets,
      challenges: await challenges,
      currentUserID: currentUserID);
}