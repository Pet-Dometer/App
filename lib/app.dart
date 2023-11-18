import 'package:app/features/settings/presentation/settings.dart';
import 'package:flutter/material.dart';
import 'package:app/features/home/presentation/challenges.dart';
import 'package:app/features/home/home_view.dart';
import 'package:app/features/authentication/presentation/login_view.dart';
import 'package:app/features/home/presentation/history.dart';
import 'dart:async';
import 'features/authentication/presentation/forgot_password.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (RouteSettings routeSettings) {
        return MaterialPageRoute<void>(
          settings: routeSettings,
          builder: (BuildContext context) {
            switch (routeSettings.name) {
              case SignInView.routeName:
                return const SignInView();
              case ChallengeView.routeName:
                return const ChallengeView();
              case HistoryView.routeName:
                return const HistoryView();
              case HomeView.routeName:
                return HomeView();
              case SettingsPageView.routeName:
                return const SettingsPageView();
              case ForgotPasswordView.routeName:
                return const ForgotPasswordView();
              default:
                return const SignInView();
            }
          },
        );
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const SignInView())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Image.asset('assets/images/splash.png', width: 100));
  }
}
