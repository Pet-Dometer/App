import 'package:flutter/material.dart';

/// The data associated with pets.
class PetData {
  PetData({
    required this.id,
    required this.petName,
    required this.background,
    required this.type,
    required this.healthBar,
    required this.moodBar,
    required this.steps,
    required this.calories,
    required this.miles,
  });

  String id;
  String petName;
  Image background;
  Image type;
  int healthBar;
  int moodBar;
  int steps;
  double calories;
  double miles;
}

/// Provides access to and operations on all defined users.
class PetDB {
  final List<PetData> _pets = [
    PetData(
      id: 'pet-001',
      petName: 'Mugi',
      background: Image.asset('assets/images/background.png'),
      type: Image.asset('assets/images/dog2.png'),
      healthBar: 100,
      moodBar: 34,
      steps: 23132,
      calories: (23132 * 0.04),
      miles: (23132 / 2000),
    ),
    PetData(
      id: 'pet-002',
      petName: 'Toro',
      background: Image.asset('assets/images/background.png'),
      type: Image.asset('assets/images/dog2.png'),
      healthBar: 80,
      moodBar: 27,
      steps: 35163,
      calories: (35163 * 0.04),
      miles: (35163 / 2000),
    ),
    PetData(
      id: 'pet-003',
      petName: 'Mew',
      background: Image.asset('assets/images/background.png'),
      type: Image.asset('assets/images/dog2.png'),
      healthBar: 77,
      moodBar: 55,
      steps: 61532,
      calories: (61532 * 0.04),
      miles: (61532 / 2000),
    ),
    PetData(
      id: 'pet-004',
      petName: 'Kilo',
      background: Image.asset('assets/images/background.png'),
      type: Image.asset('assets/images/dog2.png'),
      healthBar: 68,
      moodBar: 99,
      steps: 23461,
      calories: (23461 * 0.04),
      miles: (23461 / 2000),
    ),
  ];

  PetData getPet(String petID) {
    return _pets.firstWhere((petData) => petData.id == petID);
  }

  List<PetData> getPets(List<String> petIDs) {
    return _pets.where((petData) => petIDs.contains(petData.id)).toList();
  }
}

/// The singleton instance providing access to all user data for clients.
PetDB petDB = PetDB();
