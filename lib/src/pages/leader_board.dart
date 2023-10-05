import 'package:flutter/material.dart';

class LeaderBoardView extends StatefulWidget {
  const LeaderBoardView({Key? key}) : super(key: key);

  static const routeName = '/pedometer';

  @override
  _LeaderBoardState createState() => _LeaderBoardState();
}

class _LeaderBoardState extends State<LeaderBoardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: SafeArea(
          child: ListView(
            children: <Widget>[
              const SizedBox(height: 20),
              const Center(
                child: Text(
                  'Leaderboard',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: Image.asset('assets/images/dog2.png'),
                title: const Text('User 1 [13]'),
                subtitle: const Text('77273 Steps'),
              ),
              const Divider(),
              ListTile(
                leading: Image.asset('assets/images/dog2.png'),
                title: const Text('User 2 [11]'),
                subtitle: const Text('66221 Steps'),
              ),
              const Divider(),
              ListTile(
                leading: Image.asset('assets/images/dog2.png'),
                title: const Text('User 3 [9]'),
                subtitle: const Text('52233 Steps'),
              ),
              const Divider(),
              ListTile(
                leading: Image.asset('assets/images/dog2.png'),
                title: const Text('User 4 [7]'),
                subtitle: const Text('42134 Steps'),
              ),
              const Divider(),
              ListTile(
                leading: Image.asset('assets/images/dog2.png'),
                title: const Text('User 5 [6]'),
                subtitle: const Text('31513 Steps'),
              ),
              const Divider(),
              ListTile(
                leading: Image.asset('assets/images/dog2.png'),
                title: const Text('User 6 [4]'),
                subtitle: const Text('22131 Steps'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

