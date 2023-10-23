import 'package:app/src/pages/sign_up.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:app/src/pages/creation.dart';
import 'package:app/src/pages/forgot_password.dart';

/// Top-level Layout for all of the "Home" related
class LoginView extends StatefulWidget {
  const LoginView({
    super.key,
  });

  static const routeName = '/login';

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const Text(
              'Welcome to Pet-Ometer!',
              style: TextStyle(
                fontSize: 35,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 100),
            const Text(
              'Please sign in',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter your secure password'
                ),
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RichText(
                    text: TextSpan(children: [
                      const TextSpan(
                        text: 'Forgot your password? ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                        ),
                      ),
                      TextSpan(
                          text: 'Reset here',
                          style: const TextStyle(
                              color: Colors.blue,
                              fontSize: 15
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushNamed(
                                  context, ForgotPasswordView.routeName);
                            }),
                    ]),
                  ),
                  const SizedBox(width: 100),
                ],
              ),
            ),
            const SizedBox(height: 40),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, CreationView.routeName);                },
                child: const Text('Login'),
              ),
            ),
            const SizedBox(
              height: 180,
            ),
            RichText(
              text: TextSpan(children: [
                const TextSpan(
                  text: 'New user? ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15
                  ),
                ),
                TextSpan(
                    text: 'Sign up here',
                    style: const TextStyle(
                      color: Colors.blue,
                      fontSize: 15
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.pushNamed(context, SignupView.routeName);
                      }),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}