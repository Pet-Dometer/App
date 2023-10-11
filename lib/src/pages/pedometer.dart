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
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Container(
              height: 400,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/background.png'),
                    fit: BoxFit.fill),
              ),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 60.0,
                    child: Text(
                      'Mugi [13]',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  Image.asset('assets/images/dog2.png', width: 300),
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
                const SizedBox(height: 40),
                const Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ProgressCircle('Steps', 0.25, 4000),
                    SizedBox(width: 30),
                    ProgressCircle('Calories', .5, 300),
                    SizedBox(width: 30),
                    ProgressCircle('Miles', .8, 7),
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
