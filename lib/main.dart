import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:telemedice_project/pages/bottomNav.dart';
import 'package:telemedice_project/pages/login.dart';
import 'package:telemedice_project/pages/onboard.dart';
import 'package:telemedice_project/pages/signup.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MediTap',
      theme: ThemeData(
        fontFamily: 'Arial',
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const Onboard(),
      debugShowCheckedModeBanner: false,
    );
  }
}
