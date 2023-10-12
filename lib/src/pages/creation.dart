import 'package:app/src/pages/home_view.dart';
import 'package:flutter/material.dart';

class CreationView extends StatefulWidget {
  const CreationView({Key? key}) : super(key: key);

  static const routeName = '/creation';

  @override
  _CreationState createState() => _CreationState();
}

class _CreationState extends State<CreationView> {
  final _usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    int currentImageIndex = 0;
    List<String> imagePaths = [
      'assets/images/background.png',
      'assets/images/beach.jpg',
      'assets/images/couch.png'
    ];

    void nextImage() {
      setState(() {
        currentImageIndex = (currentImageIndex + 1) % imagePaths.length;
      });
    }

    void previousImage() {
      setState(() {
        currentImageIndex = (currentImageIndex - 1 + imagePaths.length) % imagePaths.length;
      });
    }

    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            const SizedBox(height: 120.0),
            Column(
              children: <Widget>[
                Text(
                  'Welcome to Pet-Ometer!',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 40.0),
                Image.asset('assets/images/dog.png', width: 100.0),
                ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  onPressed: () {},
                  child: const Text('Choose Pet'),
                ),
                const SizedBox(height: 30.0),
                Row(
                  children: <Widget>[
                    Image.asset(imagePaths[currentImageIndex], width: 100),
                    SizedBox(width: 20),
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: previousImage,
                    ),
                    Text('Choose Background'),
                    IconButton(
                      icon: Icon(Icons.arrow_forward),
                      onPressed: nextImage,
                    ),
                  ],
                ),
                TextField(
                  controller: _usernameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Username',
                  ),
                ),
                const SizedBox(height: 20.0),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, HomeView.routeName);
                  },
                  child: const Text('Create'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
