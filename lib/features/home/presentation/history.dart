import 'package:flutter/material.dart';
import '../../../src/widgets/stats.dart';
import '../../../src/widgets/days.dart';

class HistoryView extends StatefulWidget {
  const HistoryView({Key? key}) : super(key: key);

  static const routeName = '/history';

  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<HistoryView> {
  final _usernameController = TextEditingController();

  int activeButtonIndex = 1; // Initially no button is active
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    if (index != _selectedIndex) {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  void setActiveButton(int index) {
    setState(() {
      activeButtonIndex = index;
    });
  }

  var days = ['M', 'T', 'W', 'T', 'F', 'S', 'S'];

  List<Stats> myStats = [
    Stats('Steps', 50, 5000),
    Stats('Calories', 100, 500),
    Stats('Miles', 0.5, 2)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: new Container(
          alignment: Alignment.topCenter,
          child: Column(
            children: <Widget>[
              SizedBox(height: 20),
              Text(
                'History',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  for (var index = 0; index < days.length; index++)
                    SizedBox(
                      width: 50,
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: DayButton(
                            index: index,
                            day: days[index],
                            isActive: activeButtonIndex == index,
                            setActive: setActiveButton),
                      ),
                    ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: [
                        for (Stats stats in myStats)
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Column(children: <Widget>[
                                  Text(
                                    stats.title,
                                    maxLines: 1,
                                    style: TextStyle(
                                        fontSize: 45,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '${stats.value}/${stats.goal}',
                                    maxLines: 1,
                                    style: TextStyle(
                                      fontSize: 30,
                                    ),
                                  ),
                                ]),
                                Column(children: <Widget>[
                                  SizedBox(
                                    child: CircularProgressIndicator(
                                        value: stats.progress),
                                    height: 90,
                                    width: 90,
                                  ),
                                ]),
                                SizedBox(height: 150),
                              ]),
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
