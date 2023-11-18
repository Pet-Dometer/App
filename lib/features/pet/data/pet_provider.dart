import 'package:app/features/pet/data/pet_database.dart';
import 'package:app/features/pet/domain/pet_db.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'pet_provider.g.dart';

@riverpod
PetDatabase petDatabase(PetDatabaseRef ref) {
  return PetDatabase(ref);
}

@riverpod
Stream<List<Pet>> pets(PetsRef ref) {
  final database = ref.watch(petDatabaseProvider);
  return database.watchPets();
}