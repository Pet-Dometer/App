import 'package:flutter/material.dart';

class User extends StatelessWidget {
  String image = '';
  String name = '';
  int level = 0;
  int steps = 0;

  User(
      {
        required this.image,
        required this.name,
        required this.level,
        required this.steps,
      }
  );

  String getTitle() {
    return this.name + '[' + (this.level).toString() + ']';
  }

  String getSubtitle() {
    return (this.steps).toString() + ' steps';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          ListTile(
            leading: Image.asset(this.image),
            title: Text(getTitle()),
            subtitle: Text(getSubtitle()),
          ),
          const Divider()
        ]
    );
  }
}