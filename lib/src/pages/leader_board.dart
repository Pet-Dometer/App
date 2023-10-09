import 'package:flutter/material.dart';
import '../widgets/user.dart';

class LeaderBoardView extends StatefulWidget {
  const LeaderBoardView({Key? key}) : super(key: key);

  static const routeName = '/pedometer';

  @override
  _LeaderBoardState createState() => _LeaderBoardState();
}

class _LeaderBoardState extends State<LeaderBoardView> {

  List<User> myUsers = [
    User(
      image: 'assets/images/dog2.png',
      name: 'User 2',
      level: 11,
      steps: 66221,
    ),
    User(
      image: 'assets/images/dog2.png',
      name: 'User 3',
      level: 9,
      steps: 52233,
    ),
    User(
      image: 'assets/images/dog2.png',
      name: 'User 4',
      level: 7,
      steps: 42134,
    ),
    User(
      image: 'assets/images/dog2.png',
      name: 'User 5',
      level: 6,
      steps: 31513,
    ),
    User(
      image: 'assets/images/dog2.png',
      name: 'User 6',
      level: 4,
      steps: 22131,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: SafeArea(
          child: ListView(
            children: <Widget>[
              const SizedBox(height: 10),
              const Center(
                child: Text(
                  'Leaderboard',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
              for (User user in myUsers)
                User(
                  image: user.image,
                  name: user.name,
                  level: user.level,
                  steps: user.steps
                ),
            ],
          ),
        ),
      ),
    );
  }
}

