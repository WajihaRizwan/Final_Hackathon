import 'package:flutter/material.dart';
import 'package:rebuy/screens/bottomnavigation.dart';
import 'package:rebuy/styles/colors.dart';
import 'package:rebuy/widgets/gradient_button.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  void _signOut(BuildContext context) async {
    try {
      await FirebaseAuth.instance.signOut();
      print('User signed out successfully');

      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool('isLoggedIn', false);

 
       Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const BottomNavigation()));
    } catch (e) {
      print("Error signing out: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(
              'https://via.placeholder.com/150'), // Placeholder image
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Alice Eve",
              style: TextStyle(color: Colors.red, fontSize: 20),
            ),
            const Text(
              "alice.eve@gmail.com",
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              // Close functionality
              Navigator.pop(context);
            },
          ),
        ],
    
        elevation: 0,
      ),
      
        body: Padding(  padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'User Information',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const ListTile(
                leading: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
                title: Text(
                  'Umme Aiman',
                  style: TextStyle(color: Colors.black),
                ),
                subtitle: Text(
                  'UmmeAiman29',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.white,
                ),
                title: Text(
                  'aiman@gmail.com',
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  'Email Address',
                  style: TextStyle(color: Colors.white54),
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.white,
                ),
                title: Text(
                  '+1 234 567 890',
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  'Phone Number',
                  style: TextStyle(color: Colors.white54),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Settings',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              ListTile(
                leading: const Icon(
                  Icons.lock,
                  color: Colors.white,
                ),
                title: const Text(
                  'Change Password',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
                title: const Text(
                  'Notification Preferences',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {},
              ),
              const SizedBox(height: 20),
              Center(
                child: GradientButton(
                    onPressed: () {
                      _signOut(context);
                    },
                    text: 'Logout'),
              )
            ],
          ),
        ),
      );
    
  }
}
