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