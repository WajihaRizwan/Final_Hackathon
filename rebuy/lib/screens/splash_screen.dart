
import 'package:flutter/material.dart';
import 'package:rebuy/screens/register_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void _navigateToLogin() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const RegisterScreen(), 
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          _navigateToLogin(); 
        },
        child: Container(
          height: 915,
          width: 600,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  "assets/Splash screen (1).png"), // Background image for the splash screen
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
