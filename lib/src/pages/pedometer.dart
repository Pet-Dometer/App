import 'package:flutter/material.dart';

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
                  fit: BoxFit.fill
                ),
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
                  Image.asset('assets/images/dog2.png', width: 300)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
