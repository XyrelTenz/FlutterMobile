import 'package:flutter/material.dart';
import 'package:mobileapp/screens/user_home_screen.dart';
import 'package:mobileapp/screens/user_map_screen.dart';
import 'package:mobileapp/screens/user_profile_screen.dart';
import 'package:mobileapp/screens/user_search_screen.dart';
import 'package:mobileapp/widgets/menu_item.dart';

class UserLayout extends StatefulWidget {
  final Widget child;

  const UserLayout({super.key, required this.child});

  @override
  State<UserLayout> createState() => _UserLayoutState();
}

class _UserLayoutState extends State<UserLayout> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    UserHome(),
    UserMap(),
    UserSearch(),
    UserProfile(),
  ];

  void _onScannerPressed() {
    // TODO: Add scanner function here
    print("Scanner activated!");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEBF4E1),
      body: _pages[_currentIndex],
      // Scanner Button
      floatingActionButton: FloatingActionButton(
        onPressed: _onScannerPressed,
        backgroundColor: const Color(0xFF90B77D),
        child: const Icon(Icons.qr_code_scanner, color: Color(0xFF454545)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: SchoolNavBar(
        currentIndex: _currentIndex,
        onItemTapped: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        onScannerPressed: _onScannerPressed,
      ),
    );
  }
}
