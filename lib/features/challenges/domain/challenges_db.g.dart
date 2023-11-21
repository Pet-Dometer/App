// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'challenges_db.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChallengesImpl _$$ChallengesImplFromJson(Map<String, dynamic> json) =>
    _$ChallengesImpl(
      id: json['id'],
      frequency: json['frequency'],
      challenge: json['challenge'],
      complete: json['complete'],
    );

Map<String, dynamic> _$$ChallengesImplToJson(_$ChallengesImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'frequency': instance.frequency,
      'challenge': instance.challenge,
      'complete': instance.complete,
    };
