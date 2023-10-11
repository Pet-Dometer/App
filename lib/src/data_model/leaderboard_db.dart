import 'package:flutter/material.dart';

class LeaderboardData {
  LeaderboardData({
    required this.id,
    required this.pet,
    required this.title,
    required this.subtitle,
    required this.userID,
  });

  String id;
  String title;
  String subtitle;
  String userID;
  Image pet;
}

class LeaderboardDB {
  final List<LeaderboardData> _leaderboard = [
    LeaderboardData(
      id: 'leader-001',
      userID: 'user-001',
      title: '',
      subtitle: '',
      pet: Image.asset('assets/images/dog2.png'),
    ),
    LeaderboardData(
      id: 'leader-001',
      userID: 'user-001',
      title: '',
      subtitle: '',
      pet: Image.asset('assets/images/dog2.png'),
    ),
    LeaderboardData(
      id: 'leader-001',
      userID: 'user-001',
      title: '',
      subtitle: '',
      pet: Image.asset('assets/images/dog2.png'),
    ),
    LeaderboardData(
      id: 'leader-001',
      userID: 'user-001',
      title: '',
      subtitle: '',
      pet: Image.asset('assets/images/dog2.png'),
    ),
    LeaderboardData(
      id: 'leader-001',
      userID: 'user-001',
      title: '',
      subtitle: '',
      pet: Image.asset('assets/images/dog2.png'),
    ),
  ];
}