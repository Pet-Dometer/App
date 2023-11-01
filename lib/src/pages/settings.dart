import 'package:flutter/material.dart';
import 'package:app/src/pages/login_view.dart';

class SettingsPageView extends StatefulWidget {
  const SettingsPageView({Key? key}) : super(key: key);

  static const routeName = '/settings';

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<SettingsPageView> {

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 50),
              Image.asset(petPaths[currentPetIndex], width: 100.0, height: 100.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: previousPet,
                  ),
                  Text('Choose a pet', style: TextStyle(fontSize: 20.0),),
                  IconButton(
                    icon: Icon(Icons.arrow_forward),
                    onPressed: nextPet,
                  ),
                ],
              ),
              const SizedBox(height: 30.0),
              Image.asset(imagePaths[currentImageIndex], width: 150, height: 150),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(width: 10),
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: previousImage,
                  ),
                  Text('Choose a background', style: TextStyle(fontSize: 20.0),),
                  IconButton(
                    icon: Icon(Icons.arrow_forward),
                    onPressed: nextImage,
                  ),
                ],
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
                        color: Colors.white, borderRadius: BorderRadius.circular(20), border: Border.all(color: Colors.red)),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(
                            context, LoginView.routeName);
                      },
                      style: ButtonStyle(
                        foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.red),
                      ),
                      child: Text(
                        'Log out',
                        style: TextStyle(
                        fontSize: 18,
                        color: Colors.red,
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
