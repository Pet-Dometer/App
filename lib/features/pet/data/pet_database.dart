import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../repositories-firestore/firestore_path.dart';
import '../../../repositories-firestore/firestore_service.dart';
import '../domain/pet_db.dart';

/// Provides access to the Firestore database storing [pet] documents.
class PetDatabase {
  PetDatabase(this.ref);

  final ProviderRef<PetDatabase> ref;

  final _service = FirestoreService.instance;

  Stream<List<Pet>> watchPets() => _service.watchCollection(
      path: FirestorePath.pets(),
      builder: (data, documentId) => Pet.fromJson(data!));

  Stream<Pet> watchPet(String petId) => _service.watchDocument(
      path: FirestorePath.pet(petId),
      builder: (data, documentId) => Pet.fromJson(data!));

  Future<List<Pet>> fetchpets() => _service.fetchCollection(
      path: FirestorePath.pets(),
      builder: (data, documentId) => Pet.fromJson(data!));

  Future<Pet> fetchpet(String petId) => _service.fetchDocument(
      path: FirestorePath.pet(petId),
      builder: (data, documentId) => Pet.fromJson(data!));

  Future<void> setpet(Pet pet) => _service.setData(
      path: FirestorePath.pet(pet.id), data: pet.toJson());

  Future<void> setpetDelayed(Pet pet) => Future.delayed(
      const Duration(milliseconds: 2000),
          () => _service.setData(
          path: FirestorePath.pet(pet.id), data: pet.toJson()));

  Future<void> setpetError(Pet pet) =>
      Future.delayed(const Duration(milliseconds: 2000), () => throw Error());

  Future<void> deletepet(Pet pet) =>
      _service.deleteData(path: FirestorePath.pet(pet.id));
}