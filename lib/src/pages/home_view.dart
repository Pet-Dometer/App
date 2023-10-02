import 'package:flutter/material.dart';

import '../settings/settings_view.dart';

/// Top-level Layout for all of the "Home" related
class HomeView extends StatefulWidget {
  const HomeView({
    super.key,
  });

  static const routeName = '/home';

/*  final Map pages = {
    0: {
      'title': const Text('News'),
      'body': const NewsBodyView(),
      'navItem': const BottomNavigationBarItem(
        label: 'News',
        icon: Icon(Icons.newspaper),
      ),
    },
    1: {
      'title': const Text('Gardens'),
      'body': const GardensBodyView(),
      'navItem': const BottomNavigationBarItem(
        label: 'Gardens',
        icon: Icon(Icons.yard_outlined),
      ),
    },
  };*/

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
      // drawer: const DrawerView(),
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.restorablePushNamed(context, SettingsView.routeName);
            },
          ),
        ],
      ),
      // body: widget.pages[_selectedIndex]['body'],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // needed when more than 3 items
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_outlined),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_border_outlined),
            label: 'Leaderboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.done),
            label: 'Challenges',
          ),
/*          widget.pages[0]['navItem'],
          widget.pages[1]['navItem'],*/
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}