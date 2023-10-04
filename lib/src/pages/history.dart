import 'package:flutter/material.dart';

class HistoryView extends StatefulWidget {
  const HistoryView({Key? key}) : super(key: key);

  static const routeName = '/history';

  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<HistoryView> {
  final _usernameController = TextEditingController();

  var days = ['M', 'T', 'W', 'T', 'F', 'S', 'S'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: new Container(
        alignment: Alignment.topCenter,
        child: Column(
          children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  for (var day in days)
                    SizedBox(
                        width: 50,
                        height: 50,
                        child:
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              day,
                              style: TextStyle(color: Colors.white),
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              padding: EdgeInsets.all(5),
                              backgroundColor: Colors.pink,
                              foregroundColor: null
                            ),
                          ),
                        ),
                    ),
                  ],
              ),
              SizedBox(height: 70),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Expanded(
                    child:
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Text(
                                    'Steps',
                                    maxLines: 1,
                                    style: TextStyle(
                                        fontSize: 45,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  Text(
                                    '50/5000',
                                    maxLines: 1,
                                    style: TextStyle(
                                      fontSize: 30,
                                    ),
                                  ),
                                ]
                              ),
                              SizedBox(width: 70),
                              Column(
                                children: <Widget>[
                                  SizedBox(
                                    child: CircularProgressIndicator(
                                       value: .4
                                    ),
                                    height: 90,
                                    width: 90,
                                  ),
                                ]
                              ),
                            ]
                          ),
                        ],
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
