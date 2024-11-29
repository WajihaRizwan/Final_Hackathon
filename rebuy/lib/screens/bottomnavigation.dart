import 'package:flutter/material.dart';
import 'package:rebuy/screens/account_screen.dart';
import 'package:rebuy/screens/explore_screen.dart';
import 'package:rebuy/screens/home_screen.dart';
import 'package:rebuy/styles/colors.dart';

class BottomNavigation extends StatefulWidget {
  final int initialIndex;

  const BottomNavigation({super.key, this.initialIndex = 0});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  late int currentIndex;

  @override
  void initState() {
    super.initState();
    currentIndex = widget.initialIndex;
  }

  // Define your screens here.
  final List<Widget> screens = [
     HomeScreen(), // Placeholder for Home Screen
    ExploreScreen()// Placeholder for Explore Screen
    //  Center(child: Text("Camera Screen")), // Placeholder for Camera Screen
    // const Center(child: Text("Favorites Screen")), // Placeholder for Favorites Screen
    //  const AccountScreen(), // Placeholder for Messages/Account Screen
  ];

 @override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.transparent,
    body: Stack(
      children: [
        IndexedStack(
          index: currentIndex,
          children: screens,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 100,
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(horizontal: 24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                backgroundColor: AppColors.deepPurple,
                selectedItemColor: Colors.grey,
                unselectedItemColor: Colors.white,
                onTap: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                currentIndex: currentIndex,
                items: const [
                  BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                  BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Explore'),
                  BottomNavigationBarItem(icon: Icon(Icons.camera_alt), label: 'Camera'),
                  BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorites'),
                  BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

}
