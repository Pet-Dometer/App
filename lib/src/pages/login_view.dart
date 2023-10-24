import 'package:app/src/pages/sign_up.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:app/src/pages/forgot_password.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../data_model/user_db.dart';

/// Top-level Layout for all of the "Home" related
class LoginView extends ConsumerWidget {
  LoginView({Key? key}) : super(key: key);

  static const routeName = '/login';

  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white, elevation: 0),
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
            FormBuilder(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: FormBuilderTextField(
                      name: 'email',
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                      ),
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(),
                        FormBuilderValidators.email(),
                      ]),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: FormBuilderTextField(
                      name: 'password',
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                          hintText: 'Enter your secure password'),
                      obscureText: true,
                    ),
                  ),
                ],
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
                          style:
                              const TextStyle(color: Colors.blue, fontSize: 15),
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
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                ),
                onPressed: () {
                  bool validEmailAndPassword =
                      _formKey.currentState?.saveAndValidate() ?? false;
                  UserDB userDB = ref.read(userDBProvider);

                  if (validEmailAndPassword) {
                    String email = _formKey.currentState?.value['email'];
                    if (userDB.isUserEmail(email)) {
                      String userID = userDB.getUserID(email);
                      ref.read(currentUserIDProvider.notifier).state = userID;
                      Navigator.pushReplacementNamed(context, '/home');
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("Unknown User"),
                        duration: Duration(seconds: 10),
                      ));
                    }
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('Invalid Email or Password.'),
                      duration: Duration(seconds: 2),
                    ));
                  }
                  // Navigator.pushNamed(context, CreationView.routeName);
                },
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
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
                TextSpan(
                    text: 'Sign up here',
                    style: const TextStyle(color: Colors.blue, fontSize: 15),
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
