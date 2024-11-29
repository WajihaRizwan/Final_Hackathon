import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:rebuy/screens/account_screen.dart';
import 'package:rebuy/screens/bottomnavigation.dart';
import 'package:rebuy/screens/home_screen.dart';
import 'package:rebuy/screens/splash_screen.dart';
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
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AccountScreen(),
    );
  }
}