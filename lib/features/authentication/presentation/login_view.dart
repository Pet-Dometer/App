import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';

/// Top-level Layout for all of the "Home" related
class SignInView extends StatelessWidget {
  const SignInView({Key? key}) : super(key: key);

  static const routeName = '/SignInView';

  @override
  Widget build(BuildContext context) {
    return SignInScreen(
      actions: [

      ]
    );
  }
}
