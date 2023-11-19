import 'package:app/features/pet/domain/pet_db.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_core/firebase_core.dart';
import 'features/user/domain/user.dart';
import 'firebase_options.dart';
import 'app.dart';

Future<bool> verifyInitialData() async {
  await Pet.checkInitialData();
  await User.checkInitialData();
  return true;
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await verifyInitialData();
  runApp(const ProviderScope(child: MyApp()));
}
