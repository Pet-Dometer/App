import 'package:flutter/material.dart';
import '../widgets/challenge_details.dart';

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
                Details(
                  challenge.challenge,
                  challenge.frequency,
                  challenge.complete
                ),
            ],
          ),
        ),
      ]),
    );
  }
}
