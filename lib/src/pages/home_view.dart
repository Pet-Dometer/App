import 'package:app/src/pages/challenges.dart';
import 'package:app/src/pages/history.dart';
import 'package:app/src/pages/log_out.dart';
import 'package:app/src/pages/pedometer.dart';
import 'package:flutter/material.dart';

import '../settings/settings_view.dart';

/// Top-level Layout for all of the "Home" related
class HomeView extends StatefulWidget {
  HomeView({
    super.key,
  });

  static const routeName = '/home';

  final Map pages = {
    0: {
      'title': const Text('Home'),
      'body': const PedometerView(),
      'navItem': const BottomNavigationBarItem(
        label: 'Home',
        icon: Icon(Icons.home),
      ),
    },
    1: {
      'title': const Text('History'),
      'body': const HistoryView(),
      'navItem': const BottomNavigationBarItem(
        label: 'History',
        icon: Icon(Icons.calendar_month_outlined),
      ),
    },
    2: {
      'title': const Text('Challenges'),
      'body': const ChallengeView(),
      'navItem': const BottomNavigationBarItem(
        label: 'Challenges',
        icon: Icon(Icons.done),
      ),
    },
    3: {
      'title': const Text('Settings'),
      'body': const LogOutView(),
      'navItem': const BottomNavigationBarItem(
        label: 'Settings',
        icon: Icon(Icons.settings),
      ),
    }

  };

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    if (index != _selectedIndex) {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.pages[_selectedIndex]['body'],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // needed when more than 3 items
        items: [
          widget.pages[0]['navItem'],
          widget.pages[1]['navItem'],
          widget.pages[2]['navItem'],
          widget.pages[3]['navItem'],
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
