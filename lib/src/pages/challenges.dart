import 'package:flutter/material.dart';

class Details {
  String challenge;
  String frequency;
  bool complete;

  Details(this.challenge, this.frequency, this.complete);

  String get completeChip => complete ? 'Complete' : 'Incomplete';

  Color get frequencyColor => setFrequencyColor();

  Color get challengeColor => setChallengeColor();

  Color setFrequencyColor() {
    if (frequency == 'Weekly') {
      return const Color(0xFF4FC3F7);
    } else if (frequency == 'Monthly') {
      return const Color(0xFFEF9A9A);
    }
    return const Color(0xFFB39DDB);
  }

  Color setChallengeColor() {
    if (complete) {
      return const Color(0xFF81C784);
    }
    return Colors.grey;
  }
}

class ChallengeView extends StatefulWidget {
  const ChallengeView({Key? key}) : super(key: key);

  static const routeName = '/challenges';

  @override
  _ChallengeState createState() => _ChallengeState();
}

class _ChallengeState extends State<ChallengeView> {
  List<Details> sampleChallenges = [
    Details('Walk 500k steps', 'Daily', false),
    Details('Walk 50k steps', 'Weekly', true),
    Details('Walk 6k steps before 6pm', 'Monthly', true),
    Details('Walk 1k steps before 12pm', 'Weekly', false),
    Details('Walk 1 mile', 'Daily', true),
    Details('Walk 50 miles', 'Monthly', true),
    Details('Walk 5 miles', 'Weekly', false),
    Details('Walk 20,000k monthly', 'Monthly', true),
    Details('Walk 2 miles before 8pm', 'Daily', true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: <Widget>[
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 10),
              const Text(
                'Challenges',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              for (Details challenge in sampleChallenges)
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          const Column(children: <Widget>[
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
                                challenge.challenge,
                                style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.italic),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Chip(
                                      label: Text(challenge.completeChip),
                                      backgroundColor:
                                          challenge.challengeColor),
                                  const SizedBox(width: 10),
                                  Chip(
                                      label: Text(challenge.frequency),
                                      backgroundColor:
                                          challenge.frequencyColor),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ]),
    );
  }
}
