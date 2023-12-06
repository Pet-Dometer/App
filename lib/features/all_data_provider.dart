import 'package:app/features/pet/domain/pet_db.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'pet/data/pet_provider.dart';
import 'user/data/user_providers.dart';
import 'user/domain/user.dart';

part 'all_data_provider.g.dart';

class AllData {
  AllData(
      {required this.users, required this.pets, required this.currentUserID});

  final List<User> users;
  final List<Pet> pets;
  final String currentUserID;
}

@riverpod
Future<AllData> allData(AllDataRef ref) async {
  final users = ref.watch(usersProvider.future);
  final pets = ref.watch(petsProvider.future);
  final currentUserID = ref.watch(currentUserIDProvider);

  print("current userID: $currentUserID");
  return AllData(
      users: await users, pets: await pets, currentUserID: currentUserID);
}