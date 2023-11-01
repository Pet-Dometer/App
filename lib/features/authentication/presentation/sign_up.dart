import 'package:flutter/material.dart';
import '../../../src/pages/creation.dart';

class SignupView extends StatefulWidget {
  const SignupView({Key? key}) : super(key: key);

  static const routeName = '/signup';

  @override
  SignupViewState createState() => SignupViewState();
}

class SignupViewState extends State<SignupView> {
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: ListView(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      children: [
        const SizedBox(
          height: 20,
        ),
        const Center(
          child: Text(
            'Sign Up',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 20.0),
        // [Name]
        TextField(
          controller: _usernameController,
          decoration: const InputDecoration(
            labelText: 'Name',
          ),
        ),
        const SizedBox(height: 12.0),
        TextField(
          controller: _emailController,
          decoration: const InputDecoration(
            labelText: 'Email',
          ),
        ),
        const SizedBox(height: 12.0),
        TextField(
          controller: _passwordController,
          decoration: const InputDecoration(
            labelText: 'Password',
          ),
          obscureText: true,
        ),
        const SizedBox(height: 12.0),
        ElevatedButton(
            onPressed: () {
              // Eventually: pushReplacementNamed
              Navigator.pushNamed(context, CreationView.routeName);
            },
            child: const Text('Sign up')),
      ],
    )));
  }
}
