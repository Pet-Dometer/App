// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'challenges_db.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Challenges _$ChallengesFromJson(Map<String, dynamic> json) {
  return _Challenges.fromJson(json);
}

/// @nodoc
mixin _$Challenges {
  dynamic get id => throw _privateConstructorUsedError;
  dynamic get frequency => throw _privateConstructorUsedError;
  dynamic get challenge => throw _privateConstructorUsedError;
  dynamic get complete => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChallengesCopyWith<Challenges> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChallengesCopyWith<$Res> {
  factory $ChallengesCopyWith(
          Challenges value, $Res Function(Challenges) then) =
      _$ChallengesCopyWithImpl<$Res, Challenges>;
  @useResult
  $Res call(
      {dynamic id, dynamic frequency, dynamic challenge, dynamic complete});
}

/// @nodoc
class _$ChallengesCopyWithImpl<$Res, $Val extends Challenges>
    implements $ChallengesCopyWith<$Res> {
  _$ChallengesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? frequency = freezed,
    Object? challenge = freezed,
    Object? complete = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      frequency: freezed == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as dynamic,
      challenge: freezed == challenge
          ? _value.challenge
          : challenge // ignore: cast_nullable_to_non_nullable
              as dynamic,
      complete: freezed == complete
          ? _value.complete
          : complete // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChallengesImplCopyWith<$Res>
    implements $ChallengesCopyWith<$Res> {
  factory _$$ChallengesImplCopyWith(
          _$ChallengesImpl value, $Res Function(_$ChallengesImpl) then) =
      __$$ChallengesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic id, dynamic frequency, dynamic challenge, dynamic complete});
}

/// @nodoc
class __$$ChallengesImplCopyWithImpl<$Res>
    extends _$ChallengesCopyWithImpl<$Res, _$ChallengesImpl>
    implements _$$ChallengesImplCopyWith<$Res> {
  __$$ChallengesImplCopyWithImpl(
      _$ChallengesImpl _value, $Res Function(_$ChallengesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? frequency = freezed,
    Object? challenge = freezed,
    Object? complete = freezed,
  }) {
    return _then(_$ChallengesImpl(
      id: freezed == id ? _value.id! : id,
      frequency: freezed == frequency ? _value.frequency! : frequency,
      challenge: freezed == challenge ? _value.challenge! : challenge,
      complete: freezed == complete ? _value.complete! : complete,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChallengesImpl implements _Challenges {
  const _$ChallengesImpl(
      {required this.id,
      required this.frequency,
      required this.challenge,
      required this.complete});

  factory _$ChallengesImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChallengesImplFromJson(json);

  @override
  final dynamic id;
  @override
  final dynamic frequency;
  @override
  final dynamic challenge;
  @override
  final dynamic complete;

  @override
  String toString() {
    return 'Challenges(id: $id, frequency: $frequency, challenge: $challenge, complete: $complete)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChallengesImpl &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.frequency, frequency) &&
            const DeepCollectionEquality().equals(other.challenge, challenge) &&
            const DeepCollectionEquality().equals(other.complete, complete));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(frequency),
      const DeepCollectionEquality().hash(challenge),
      const DeepCollectionEquality().hash(complete));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChallengesImplCopyWith<_$ChallengesImpl> get copyWith =>
      __$$ChallengesImplCopyWithImpl<_$ChallengesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChallengesImplToJson(
      this,
    );
  }
}

abstract class _Challenges implements Challenges {
  const factory _Challenges(
      {required final dynamic id,
      required final dynamic frequency,
      required final dynamic challenge,
      required final dynamic complete}) = _$ChallengesImpl;

  factory _Challenges.fromJson(Map<String, dynamic> json) =
      _$ChallengesImpl.fromJson;

  @override
  dynamic get id;
  @override
  dynamic get frequency;
  @override
  dynamic get challenge;
  @override
  dynamic get complete;
  @override
  @JsonKey(ignore: true)
  _$$ChallengesImplCopyWith<_$ChallengesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
