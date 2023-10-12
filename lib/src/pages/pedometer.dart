import 'package:app/src/data_model/pet_db.dart';
import 'package:flutter/material.dart';
import '../widgets/pedometer_circles.dart';

class PedometerView extends StatefulWidget {
  const PedometerView({Key? key}) : super(key: key);

  static const routeName = '/pedometer';

  @override
  _PedometerState createState() => _PedometerState();
}

class _PedometerState extends State<PedometerView> {

  @override
  Widget build(BuildContext context) {
    PetData sample1 = PetDB().getPet('pet-001');
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Container(
              height: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: sample1.background,
                    fit: BoxFit.fill),
              ),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 60.0,
                    child: Text(
                      sample1.petName,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  sample1.type,
                  Image.asset('assets/images/healthbar.png', width: 150),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 20),
                Image.asset('assets/images/moodbar.png', width: 200),
                const SizedBox(height: 20),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ProgressCircle('Steps', 0.25, sample1.steps),
                    SizedBox(width: 30),
                    ProgressCircle('Calories', .5, sample1.calories),
                    SizedBox(width: 30),
                    ProgressCircle('Miles', .8, sample1.miles),
                    SizedBox(width: 30),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
