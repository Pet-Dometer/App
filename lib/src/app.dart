import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:app/src/pages/creation.dart';
import 'package:app/src/pages/challenges.dart';
import 'package:app/src/pages/home_view.dart';
import 'package:app/src/pages/log_out.dart';
import 'package:app/src/pages/login_view.dart';
import 'package:app/src/pages/history.dart';
import 'package:app/src/pages/pedometer.dart';
import 'package:app/src/pages/challenges.dart';
import 'package:app/src/pages/sign_up.dart';
import 'package:app/src/pages/forgot_password.dart';

import 'sample_feature/sample_item_details_view.dart';
import 'sample_feature/sample_item_list_view.dart';
import 'settings/settings_controller.dart';
import 'settings/settings_view.dart';

import 'dart:async';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    required this.settingsController,
  });

  final SettingsController settingsController;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      restorationScopeId: 'app',
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''), // English, no country code
      ],
      onGenerateTitle: (BuildContext context) =>
      AppLocalizations.of(context)!.appTitle,
      theme: ThemeData(),
      darkTheme: ThemeData.dark(),
      themeMode: settingsController.themeMode,
      home: SplashScreen(),
      onGenerateRoute: (RouteSettings routeSettings) {
        return MaterialPageRoute<void>(
          settings: routeSettings,
          builder: (BuildContext context) {
            switch (routeSettings.name) {
              case ChallengeView.routeName:
                return const ChallengeView();
              case CreationView.routeName:
                return const CreationView();
              case HistoryView.routeName:
                return const HistoryView();
              case HomeView.routeName:
                return HomeView();
              case LogOutView.routeName:
                return const LogOutView();
              case SettingsView.routeName:
                return SettingsView(controller: settingsController);
              case SignupView.routeName:
                return const SignupView();
              case ForgotPasswordView.routeName:
                return const ForgotPasswordView();
              default:
                return LoginView();
            }
          },
        );
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                LoginView()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Image.asset('assets/images/splash.png', width: 100)
    );
  }
}
