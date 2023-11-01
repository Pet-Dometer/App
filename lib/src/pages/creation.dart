import 'package:app/features/home/home_view.dart';
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
    int currentPetIndex = 0;

    List<String> imagePaths = [
      'assets/images/background.png',
      'assets/images/beach.jpg',
      'assets/images/couch.png'
    ];

    List<String> petPaths = [
      'assets/images/dog.png',
      'assets/images/cat.png',
      'assets/images/bird.png',
    ];

    void nextPet() {
      setState(() {
        currentPetIndex = (currentPetIndex + 1) % petPaths.length;
      });
    }

    void previousPet() {
      setState(() {
        currentPetIndex = (currentPetIndex - 1 + petPaths.length) % petPaths.length;
      });
    }

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
                Image.asset(petPaths[currentPetIndex], width: 100.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: previousPet,
                    ),
                    Text('Choose Pet',style: TextStyle(fontSize: 20.0),),
                    IconButton(
                      icon: Icon(Icons.arrow_forward),
                      onPressed: nextPet,
                    ),
                  ],
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
                const SizedBox(height: 30.0),
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
