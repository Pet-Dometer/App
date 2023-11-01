import 'package:app/features/challenges/domain/challenges_db.dart';
import 'package:flutter/material.dart';
import '../../../src/widgets/challenge_details.dart';

class ChallengeView extends StatefulWidget {
  const ChallengeView({Key? key}) : super(key: key);

  static const routeName = '/challenges';

  @override
  _ChallengeState createState() => _ChallengeState();
}

class _ChallengeState extends State<ChallengeView> {
  ChallengeData sample1 = ChallengesDB().getChallenge('challenge-001');
  ChallengeData sample2 = ChallengesDB().getChallenge('challenge-002');
  ChallengeData sample3 = ChallengesDB().getChallenge('challenge-003');

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
              Details(sample1.challenge, sample1.frequency, sample1.complete),
              Details(sample2.challenge, sample2.frequency, sample2.complete),
              Details(sample3.challenge, sample3.frequency, sample3.complete),
            ],
          ),
        ),
      ]),
    );
  }
}
