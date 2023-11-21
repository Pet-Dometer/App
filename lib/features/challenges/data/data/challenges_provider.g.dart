// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'challenges_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$challengesDatabaseHash() =>
    r'0068c9cdb6ab4a01d00e652e92031c04817d0721';

/// See also [challengesDatabase].
@ProviderFor(challengesDatabase)
final challengesDatabaseProvider =
    AutoDisposeProvider<ChallengesDatabase>.internal(
  challengesDatabase,
  name: r'challengesDatabaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$challengesDatabaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ChallengesDatabaseRef = AutoDisposeProviderRef<ChallengesDatabase>;
String _$challengesHash() => r'c99b25262eeed67ef6ed5f5047ae220a8577a884';

/// See also [challenges].
@ProviderFor(challenges)
final challengesProvider = AutoDisposeStreamProvider<List<Challenges>>.internal(
  challenges,
  name: r'challengesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$challengesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ChallengesRef = AutoDisposeStreamProviderRef<List<Challenges>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
