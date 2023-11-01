import 'package:flutter/material.dart';

class DayButton extends StatelessWidget {
  String day = '';
  int index = 0;
  Function(int) setActive;
  bool isActive = false;

  DayButton(
      {
        required this.day,
        required this.index,
        required this.isActive,
        required this.setActive
      }
  );

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        setActive(index);
      },
      child: Text(
        day,
        style: isActive
            ? TextStyle(color: Colors.white)
            : TextStyle(color: Colors.black),
      ),
      style: isActive
          ? ElevatedButton.styleFrom(
          shape: CircleBorder(),
          elevation: 0,
          padding: EdgeInsets.all(5),
          primary: Colors.pink,
          // Change color for active button
          foregroundColor: null)
          : ElevatedButton.styleFrom(
        shape: CircleBorder(),
        elevation: 0,
        padding: EdgeInsets.all(5),
        primary: Colors.white, // Change color for non-active button
        // foregroundColor: null
      ),
    );
  }

  }