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
                Row(
                  children: <Widget>[
                    const SizedBox(height: 200.0),
                    Image.asset('assets/images/background.png', width: 120),
                    const Spacer(),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black
                      ),
                      onPressed: () {},
                      child: const Text('Choose Background'),
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
                    Navigator.pushNamed(context, '/home');
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
