import 'package:flutter/material.dart';
import 'package:app/features/authentication/presentation/login_view.dart';

class ForgotPasswordView extends StatefulWidget {
  const ForgotPasswordView({Key? key}) : super(key: key);

  static const routeName = '/forgot-password';

  @override
  ForgotPasswordViewState createState() => ForgotPasswordViewState();
}

class ForgotPasswordViewState extends State<ForgotPasswordView> {
  final _emailController = TextEditingController();
  final _newPasswordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

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
            'Reset Password',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 20.0),
        const SizedBox(height: 12.0),
        TextField(
          controller: _emailController,
          decoration: const InputDecoration(
            labelText: 'Email',
          ),
        ),
        const SizedBox(height: 12.0),
        TextField(
          controller: _newPasswordController,
          decoration: const InputDecoration(
            labelText: 'New Password',
          ),
          obscureText: true,
        ),
        const SizedBox(height: 12.0),
        TextField(
          controller: _confirmPasswordController,
          decoration: const InputDecoration(
            labelText: 'Confirm New Password',
          ),
          obscureText: true,
        ),
        const SizedBox(height: 12.0),
        ElevatedButton(
            onPressed: () {
              // Eventually: pushReplacementNamed
              Navigator.pushNamed(context, LoginView.routeName);
            },
            child: const Text('Reset password')),
      ],
    )));
  }
}
