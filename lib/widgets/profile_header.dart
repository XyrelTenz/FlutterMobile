import 'package:flutter/material.dart';

class ProfileDetailScreen extends StatelessWidget {
  const ProfileDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
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
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 4),
            const Text(
              "Year 2",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 40),
            // Example of adding more student details
            const ListTile(title: Text("Student ID: CS1234567")),
            const ListTile(
              title: Text("Email: x.d.tenefrancia@university.edu"),
            ),
            const ListTile(title: Text("Phone: (123) 456-7890")),
            // Back Button
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Go back to previous screen
              },
              child: const Text("Back to Profile"),
            ),
          ],
        ),
      ),
    );
  }
}
