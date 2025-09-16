import 'package:flutter/material.dart';

class ProfileDetailScreen extends StatelessWidget {
  const ProfileDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFEBF4E1),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Profile Details",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xFF454545),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundColor: Color(0xFFEBF4E1),
              child: Icon(Icons.person, size: 60, color: Color(0xFF454545)),
            ),
            const SizedBox(height: 20),
            const Text(
              "Xyrel D. Tenefrancia",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF454545),
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "School of Computing Studies",

              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF454545),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              "2nd Year",
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF454545),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40),
            const ListTile(title: Text("Student ID: CS51854")),
            const ListTile(title: Text("Email: xdemocrito1@gmail.com")),
            const ListTile(title: Text("Phone: 09501712939")),
            // Back Button
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
