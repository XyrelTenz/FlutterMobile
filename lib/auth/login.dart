import 'package:flutter/material.dart';
import "package:mobileapp/auth/register.dart";

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool isCheck = true;

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            width: double.infinity,
            color: Color(0xFFEBF4E1),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "JH",
                  style: TextStyle(
                    color: Color(0xFF90B77D),
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),
                ),
                SizedBox(width: 8),
                Text(
                  "CERILLES",
                  style: TextStyle(
                    color: Color(0xFF454545),
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 2,
                  ),
                ),
              ],
            ),
          ),

          // Login Form
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            width: double.infinity,
            padding: EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Color(0xFF90B77D),
              borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Welcome Back!",
                    style: TextStyle(
                      color: Color(0xFF454545),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16),

                  // Username field
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: "Email",
                      labelStyle: TextStyle(color: Color(0xFF454545)),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      filled: true,
                      fillColor: Color(0xFFEBF4E1),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Color(0xFF454545),
                          width: 2, // Adjust border width here
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Color(0xFF454545),
                          width: 3, // Adjust border width here
                        ),
                      ),
                      suffixIcon: Icon(Icons.person, color: Color(0xFF90B77D)),
                    ),
                  ),
                  SizedBox(height: 12),

                  // Password field
                  TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: TextStyle(color: Color(0xFF454545)),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      filled: true,
                      fillColor: Color(0xFFEBF4E1),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Color(0xFF454545),
                          width: 2, // Adjust border width here
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Color(0xFF454545),
                          width: 3, // Adjust border width here
                        ),
                      ),
                      suffixIcon: Icon(Icons.lock, color: Color(0xFF90B77D)),
                    ),
                  ),
                  SizedBox(height: 12),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: isCheck,
                            onChanged: (bool? value) {
                              isCheck = value ??= false;
                            },
                            activeColor: Colors.white,
                            checkColor: Color(0xFF454545),
                          ),
                          Text(
                            "Remember me",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forgot Password",
                          style: TextStyle(
                            color: Color(0xFF454545),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12),

                  ElevatedButton(
                    onPressed: () {
                      print(
                        "Username: ${emailController.text}, Password: ${passwordController.text}",
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFEBF4E1),
                      foregroundColor: Color(0xFF454545),
                      padding: EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF454545),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 8),

                  TextButton(
                    onPressed: () {
                      Register();
                      print("Clicked");
                    },
                    child: Text(
                      "Don't have an account? Create a new account",
                      style: TextStyle(
                        color: Color(0xFF454545),
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
