import 'package:flutter/material.dart';

class LeaderBoardView extends StatefulWidget {
  const LeaderBoardView({Key? key}) : super(key: key);

  static const routeName = '/leaderboard';

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
          child: Column(
            children: <Widget>[
              const SizedBox(height: 50),
              Image.asset('assets/images/logo.png', height: 200),
              const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(height: 70),
                    Text(
                      'Oh no! You\'re leaving .... \nAre you sure you want to log out?',
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 70),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 275,
                    decoration: BoxDecoration(
                        color: Colors.blue, borderRadius: BorderRadius.circular(20)),
                    child: TextButton(
                      onPressed: () {
                        // Add logic for the first button
                      },
                      style: ButtonStyle(
                        foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                      ),
                      child: Text(
                        'Nahhh, just kidding',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                      )),
                    ),
                  ),
                  SizedBox(height: 20), // Space between the buttons
                  Container(
                    height: 50,
                    width: 275,
                    decoration: BoxDecoration(
                        color: Colors.white, borderRadius: BorderRadius.circular(20), border: Border.all(color: Colors.blue)),
                    child: TextButton(
                      onPressed: () {
                        // Add logic for the first button
                      },
                      style: ButtonStyle(
                        foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                      ),
                      child: Text(
                        'Yes, log me out',
                        style: TextStyle(
                        fontSize: 18,
                        color: Colors.blue,
                      )
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
