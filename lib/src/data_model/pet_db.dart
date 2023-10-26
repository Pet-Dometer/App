import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// The data associated with pets.
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
  ImageProvider background;
  Image type;
  int healthBar;
  int moodBar;
  int steps;
  int currSteps;
  int stepGoal;
  int calories;
  int miles;
}

/// Provides access to and operations on all defined users.
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
      calories: 925,
      miles: 11,
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
      calories: 423,
      miles: 9,
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
      calories: 1286,
      miles: 13,
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
      calories: 902,
      miles: 11,
    ),
  ];

  String getAssociatedPetID(String userID) {
    return getPetIDs()
        .where((petID) => _userIsAssociated(petID, userID))
        .toString().replaceAll("(", "").replaceAll(")", "");
  }

  bool _userIsAssociated(String petID, String userID) {
    PetData data = getPet(petID);
    return (data.ownerID == userID);
  }
}

final petDBProvider = Provider<PetDB>((ref) {
  return PetDB(ref);
});
