import 'package:flutter/material.dart';

class SchoolNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onItemTapped;
  final VoidCallback onScannerPressed;

  const SchoolNavBar({
    super.key,
    required this.currentIndex,
    required this.onItemTapped,
    required this.onScannerPressed,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: const Color.fromARGB(255, 227, 245, 207),
      shadowColor: Color(0xFF454545),
      shape: const CircularNotchedRectangle(),
      notchMargin: 20.0,
      elevation: 8,
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItem(Icons.home, "Home", 0),
            _buildNavItem(Icons.map, "Map", 1),
            const SizedBox(width: 48),
            _buildNavItem(Icons.search, "Search", 2),
            _buildNavItem(Icons.person, "Profile", 3),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, int index) {
    final bool isActive = currentIndex == index;

    return GestureDetector(
      onTap: () => onItemTapped(index),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: isActive
                  ? const Color(0xFF90B77D)
                  : const Color(0xFF454545),
            ),
            Text(
              label,
              style: TextStyle(
                fontSize: 12,
                color: isActive
                    ? const Color(0xFF90B77D)
                    : const Color(0xFF454545),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
