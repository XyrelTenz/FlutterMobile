import 'package:flutter/material.dart';
import 'package:mobileapp/widgets/profile_header.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: CircleAvatar(
                  radius: 60,
                  backgroundColor: Color(0xFFEBF4E1),
                  child: Icon(
                    Icons.person,
                    size: 60,
                    color: Color(0xFF454545),
                    semanticLabel: "Profile Picture",
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Student Info
              const Center(
                child: Column(
                  children: [
                    Text(
                      "Xyrel D. Tenefrancia",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF454545),
                      ),
                    ),
                    SizedBox(height: 6),
                    Text(
                      "School of Computing Studies",
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Year 2",
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),

              // Menu Items
              Expanded(
                child: ListView(
                  children: [
                    _buildListItem(
                      icon: Icons.person,
                      label: "Profile",
                      onTap: () {
                        // Navigate to Profile Detail Screen
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ProfileDetailScreen(),
                          ),
                        );
                      },
                    ),
                    const Divider(
                      height: 32,
                      thickness: 0.2,
                      color: Color(0xFF454545),
                    ),
                    _buildListItem(
                      icon: Icons.logout,
                      label: "Log Out",
                      iconColor: Colors.red,
                      textColor: Colors.red,
                      onTap: () {
                        // Handle logout
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Reusable List Tile with optional styling for icon and text.
  Widget _buildListItem({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
    Color iconColor = const Color(0xFF454545),
    Color textColor = const Color(0xFF454545),
  }) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 8.0),
      leading: Icon(icon, color: iconColor),
      title: Text(label, style: TextStyle(fontSize: 18, color: textColor)),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: onTap,
    );
  }
}
