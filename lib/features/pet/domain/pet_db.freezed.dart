// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pet_db.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Pet _$PetFromJson(Map<String, dynamic> json) {
  return _Pet.fromJson(json);
}

/// @nodoc
mixin _$Pet {
  String get id => throw _privateConstructorUsedError;
  String get ownerID => throw _privateConstructorUsedError;
  String get petName => throw _privateConstructorUsedError;
  String get background => throw _privateConstructorUsedError;
  String get petImage => throw _privateConstructorUsedError;
  String get healthBar => throw _privateConstructorUsedError;
  int get steps => throw _privateConstructorUsedError;
  int get currSteps => throw _privateConstructorUsedError;
  int get stepGoal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PetCopyWith<Pet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PetCopyWith<$Res> {
  factory $PetCopyWith(Pet value, $Res Function(Pet) then) =
      _$PetCopyWithImpl<$Res, Pet>;
  @useResult
  $Res call(
      {String id,
      String ownerID,
      String petName,
      String background,
      String petImage,
      String healthBar,
      int steps,
      int currSteps,
      int stepGoal});
}

/// @nodoc
class _$PetCopyWithImpl<$Res, $Val extends Pet> implements $PetCopyWith<$Res> {
  _$PetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ownerID = null,
    Object? petName = null,
    Object? background = null,
    Object? petImage = null,
    Object? healthBar = null,
    Object? steps = null,
    Object? currSteps = null,
    Object? stepGoal = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      ownerID: null == ownerID
          ? _value.ownerID
          : ownerID // ignore: cast_nullable_to_non_nullable
              as String,
      petName: null == petName
          ? _value.petName
          : petName // ignore: cast_nullable_to_non_nullable
              as String,
      background: null == background
          ? _value.background
          : background // ignore: cast_nullable_to_non_nullable
              as String,
      petImage: null == petImage
          ? _value.petImage
          : petImage // ignore: cast_nullable_to_non_nullable
              as String,
      healthBar: null == healthBar
          ? _value.healthBar
          : healthBar // ignore: cast_nullable_to_non_nullable
              as String,
      steps: null == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as int,
      currSteps: null == currSteps
          ? _value.currSteps
          : currSteps // ignore: cast_nullable_to_non_nullable
              as int,
      stepGoal: null == stepGoal
          ? _value.stepGoal
          : stepGoal // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PetImplCopyWith<$Res> implements $PetCopyWith<$Res> {
  factory _$$PetImplCopyWith(_$PetImpl value, $Res Function(_$PetImpl) then) =
      __$$PetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String ownerID,
      String petName,
      String background,
      String petImage,
      String healthBar,
      int steps,
      int currSteps,
      int stepGoal});
}

/// @nodoc
class __$$PetImplCopyWithImpl<$Res> extends _$PetCopyWithImpl<$Res, _$PetImpl>
    implements _$$PetImplCopyWith<$Res> {
  __$$PetImplCopyWithImpl(_$PetImpl _value, $Res Function(_$PetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ownerID = null,
    Object? petName = null,
    Object? background = null,
    Object? petImage = null,
    Object? healthBar = null,
    Object? steps = null,
    Object? currSteps = null,
    Object? stepGoal = null,
  }) {
    return _then(_$PetImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      ownerID: null == ownerID
          ? _value.ownerID
          : ownerID // ignore: cast_nullable_to_non_nullable
              as String,
      petName: null == petName
          ? _value.petName
          : petName // ignore: cast_nullable_to_non_nullable
              as String,
      background: null == background
          ? _value.background
          : background // ignore: cast_nullable_to_non_nullable
              as String,
      petImage: null == petImage
          ? _value.petImage
          : petImage // ignore: cast_nullable_to_non_nullable
              as String,
      healthBar: null == healthBar
          ? _value.healthBar
          : healthBar // ignore: cast_nullable_to_non_nullable
              as String,
      steps: null == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as int,
      currSteps: null == currSteps
          ? _value.currSteps
          : currSteps // ignore: cast_nullable_to_non_nullable
              as int,
      stepGoal: null == stepGoal
          ? _value.stepGoal
          : stepGoal // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PetImpl extends _Pet {
  const _$PetImpl(
      {required this.id,
      required this.ownerID,
      required this.petName,
      required this.background,
      required this.petImage,
      required this.healthBar,
      required this.steps,
      required this.currSteps,
      required this.stepGoal})
      : super._();

  factory _$PetImpl.fromJson(Map<String, dynamic> json) =>
      _$$PetImplFromJson(json);

  @override
  final String id;
  @override
  final String ownerID;
  @override
  final String petName;
  @override
  final String background;
  @override
  final String petImage;
  @override
  final String healthBar;
  @override
  final int steps;
  @override
  final int currSteps;
  @override
  final int stepGoal;

  @override
  String toString() {
    return 'Pet(id: $id, ownerID: $ownerID, petName: $petName, background: $background, petImage: $petImage, healthBar: $healthBar, steps: $steps, currSteps: $currSteps, stepGoal: $stepGoal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PetImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ownerID, ownerID) || other.ownerID == ownerID) &&
            (identical(other.petName, petName) || other.petName == petName) &&
            (identical(other.background, background) ||
                other.background == background) &&
            (identical(other.petImage, petImage) ||
                other.petImage == petImage) &&
            (identical(other.healthBar, healthBar) ||
                other.healthBar == healthBar) &&
            (identical(other.steps, steps) || other.steps == steps) &&
            (identical(other.currSteps, currSteps) ||
                other.currSteps == currSteps) &&
            (identical(other.stepGoal, stepGoal) ||
                other.stepGoal == stepGoal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, ownerID, petName, background,
      petImage, healthBar, steps, currSteps, stepGoal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PetImplCopyWith<_$PetImpl> get copyWith =>
      __$$PetImplCopyWithImpl<_$PetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PetImplToJson(
      this,
    );
  }
}

abstract class _Pet extends Pet {
  const factory _Pet(
      {required final String id,
      required final String ownerID,
      required final String petName,
      required final String background,
      required final String petImage,
      required final String healthBar,
      required final int steps,
      required final int currSteps,
      required final int stepGoal}) = _$PetImpl;
  const _Pet._() : super._();

  factory _Pet.fromJson(Map<String, dynamic> json) = _$PetImpl.fromJson;

  @override
  String get id;
  @override
  String get ownerID;
  @override
  String get petName;
  @override
  String get background;
  @override
  String get petImage;
  @override
  String get healthBar;
  @override
  int get steps;
  @override
  int get currSteps;
  @override
  int get stepGoal;
  @override
  @JsonKey(ignore: true)
  _$$PetImplCopyWith<_$PetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
