import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  String challenge;
  String frequency;
  Color _color = Colors.lightBlue;
  bool complete;

  Details(String this.challenge, String this.frequency, bool this.complete);

  String get completeChip => this.complete ? 'Complete' : 'Incomplete';

  Color get frequencyColor => setFrequencyColor();

  Color get challengeColor => setChallengeColor();

  Color setFrequencyColor() {
    if (this.frequency == 'Weekly') {
      return Color(0xFF4FC3F7);
    } else if (this.frequency == 'Monthly') {
      return Color(0xFFEF9A9A);
    }
    return Color(0xFFB39DDB);
  }

  Color setChallengeColor() {
    if (this.complete) {
      return Color(0xFF81C784);
    }
    return Colors.grey;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Column(children: <Widget>[
                Icon(
                  Icons.emoji_events,
                  color: Color(0xFFFFD600),
                  size: 100,
                ),
              ]),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    this.challenge,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.italic),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Chip(
                          label: new Text(this.completeChip),
                          backgroundColor:
                          this.challengeColor),
                      SizedBox(width: 10),
                      Chip(
                          label: new Text(this.frequency),
                          backgroundColor:
                          this.frequencyColor),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}