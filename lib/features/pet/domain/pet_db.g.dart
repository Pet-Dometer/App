// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet_db.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PetImpl _$$PetImplFromJson(Map<String, dynamic> json) => _$PetImpl(
      id: json['id'] as String,
      ownerID: json['ownerID'] as String,
      petName: json['petName'] as String,
      background: json['background'] as String,
      type: json['type'] as String,
      healthBar: json['healthBar'] as int,
      moodBar: json['moodBar'] as int,
      steps: json['steps'] as int,
      currSteps: json['currSteps'] as int,
      stepGoal: json['stepGoal'] as int,
      calories: json['calories'] as int,
      miles: json['miles'] as int,
    );

Map<String, dynamic> _$$PetImplToJson(_$PetImpl instance) => <String, dynamic>{
      'id': instance.id,
      'ownerID': instance.ownerID,
      'petName': instance.petName,
      'background': instance.background,
      'type': instance.type,
      'healthBar': instance.healthBar,
      'moodBar': instance.moodBar,
      'steps': instance.steps,
      'currSteps': instance.currSteps,
      'stepGoal': instance.stepGoal,
      'calories': instance.calories,
      'miles': instance.miles,
    };
