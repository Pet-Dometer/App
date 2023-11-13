import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@Freezed()
class User with _$User {
  const factory User({
    required String id,
    required String email,
    required String password,
}) = _User;

  const User._();

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  static Future<List<User>> checkInitialData() async {
    String content =
    await rootBundle.loadString("assets/initialData/users.json");
    List<dynamic> initialData = json.decode(content);
    return initialData.map((jsonData) => User.fromJson(jsonData)).toList();
  }
}

/// The data associated with users.
class UserData {
  UserData({
    required this.id,
    required this.email,
    required this.password,
  });

  String id;
  String email;
  String password;
}

/// Provides access to and operations on all defined users.
class UserDB {
  UserDB(this.ref);

  final ProviderRef<UserDB> ref;
  final List<UserData> _users = [
    UserData(
      id: 'user-001',
      password: 'foo',
      email: 'johnfoo@gmail.com',
    ),
    UserData(
      id: 'user-002',
      password: 'foo',
      email: 'janefoo@gmail.com',
    ),
    UserData(
      id: 'user-003',
      password: 'foo',
      email: 'joefoo@gmail.com',
    ),
    UserData(
      id: 'user-004',
      password: 'foo',
      email: 'maryfoo@hawaii.edu',
    ),
  ];
}