import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'pet_db.freezed.dart';
part 'pet_db.g.dart';

@Freezed()
class Pet with _$Pet {
  const factory Pet({
    required String id,
    required String ownerID,
    required String petName,
    required String background,
    required String type,
    required int steps,
    required int currSteps,
    required int stepGoal,
  }) = _Pet;

  const Pet._();

  int getCalories() {
    return (steps * 0.04).round();
  }

  int getMiles() {
    return (steps / 2000).round();
  }

  factory Pet.fromJson(Map<String, dynamic> json) => _$PetFromJson(json);

  static Future<List<Pet>> checkInitialData() async {
    String content =
    await rootBundle.loadString("assets/initialData/pets.json");
    List<dynamic> initialData = json.decode(content);
    return initialData.map((jsonData) => Pet.fromJson(jsonData)).toList();
  }
}

/*
/// The data associated with users.
class PetData {
  PetData({
    required this.id,
    required this.ownerID,
    required this.petName,
    required this.background,
    required this.type,
    required this.healthBar,
    required this.moodBar,
    required this.steps,
    required this.currSteps,
    required this.stepGoal,
    required this.calories,
    required this.miles,
  });

  String id;
  String ownerID;
  String petName;
  ImageProvider<Object> background;
  Image type;
  int healthBar;
  int moodBar;
  int steps;
  int currSteps;
  int stepGoal;
  int calories;
  int miles;

  int getCalories() {
    return (steps * 0.04).round();
  }

  int getMiles() {
    return (steps / 2000).round();
  }
}
*/

/*import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PetData {
  PetData({
    required this.id,
    required this.ownerID,
    required this.petName,
    required this.background,
    required this.type,
    required this.healthBar,
    required this.moodBar,
    required this.steps,
    required this.currSteps,
    required this.stepGoal,
    required this.calories,
    required this.miles,
  });

  String id;
  String ownerID;
  String petName;
  ImageProvider<Object> background;
  Image type;
  int healthBar;
  int moodBar;
  int steps;
  int currSteps;
  int stepGoal;
  int calories;
  int miles;

  int getCalories() {
    return (steps * 0.04).round();
  }

  int getMiles() {
    return (steps / 2000).round();
  }
}

class PetDB {
  PetDB(this.ref);

  final ProviderRef<PetDB> ref;
  PetData getPet(String petID) {
    return _pets.firstWhere((petData) => petData.id == petID);
  }

  List<String> getPetIDs() {
    return _pets.map((data) => data.id).toList();
  }

  final List<PetData> _pets = [
    PetData(
      id: 'pet-001',
      ownerID: 'user-001',
      petName: '[Mugi]',
      background: AssetImage('assets/images/background.png'),
      type: Image.asset('assets/images/dog2.png', width: 300),
      healthBar: 100,
      moodBar: 34,
      steps: 23132,
      currSteps: 3868,
      stepGoal: 7500,
      calories: 0,
      miles: 0,
    ),
    PetData(
      id: 'pet-002',
      ownerID: 'user-002',
      petName: '[Toro]',
      background: AssetImage('assets/images/background.png'),
      type: Image.asset('assets/images/dog2.png'),
      healthBar: 80,
      moodBar: 27,
      steps: 35163,
      currSteps: 163,
      stepGoal: 8500,
      calories: 0,
      miles: 0,
    ),
    PetData(
      id: 'pet-003',
      ownerID: 'user-003',
      petName: '[Mew]',
      background: AssetImage('assets/images/background.png'),
      type: Image.asset('assets/images/dog2.png'),
      healthBar: 77,
      moodBar: 55,
      steps: 61532,
      currSteps: 9032,
      stepGoal: 9500,
      calories: 0,
      miles: 0,
    ),
    PetData(
      id: 'pet-004',
      ownerID: 'user-004',
      petName: '[Kilo]',
      background: AssetImage('assets/images/background.png'),
      type: Image.asset('assets/images/dog2.png'),
      healthBar: 68,
      moodBar: 99,
      steps: 23461,
      currSteps: 4061,
      stepGoal: 7500,
      calories: 0,
      miles: 0,
    ),
  ];

  String getAssociatedPetID(String userID) {
    return getPetIDs()
        .where((petID) => _userIsAssociated(petID, userID))
        .toString()
        .replaceAll("(", "")
        .replaceAll(")", "");
  }

  bool _userIsAssociated(String petID, String userID) {
    PetData data = getPet(petID);
    return data.ownerID == userID;
  }

  // Calculate calories and miles for each pet in the _pets list
  void calculateCaloriesAndMiles() {
    for (var pet in _pets) {
      pet.calories = pet.getCalories();
      pet.miles = pet.getMiles();
    }
  }
}

final petDBProvider = Provider<PetDB>((ref) {
  final petDB = PetDB(ref);
  petDB.calculateCaloriesAndMiles(); // Calculate calories and miles during initialization
  return petDB;
});*/
