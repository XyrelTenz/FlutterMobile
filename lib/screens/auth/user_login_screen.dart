import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mobileapp/screens/auth/user_register_screen.dart';
import 'package:mobileapp/screens/user_home_screen.dart';
import 'package:mobileapp/layouts/user_menu_layout.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool isCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          // Header Title
          Container(
            height: MediaQuery.of(context).size.height * 0.45,
            width: double.infinity,
            color: const Color(0xFFEBF4E1),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      "JH",
                      style: TextStyle(
                        color: Color(0xFF90B77D),
                        fontSize: 42,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(
                      "CERILLES",
                      style: TextStyle(
                        color: Color(0xFF454545),
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 2,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12),
              ],
            ),
          ),

          // Login Form
          Expanded(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: const BoxDecoration(
                color: Color(0xFF90B77D),
                borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      "Welcome Back!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 24),

                    // Email
                    TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        labelText: "Email",
                        labelStyle: const TextStyle(color: Color(0xFF454545)),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        filled: true,
                        fillColor: const Color(0xFFEBF4E1),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Color(0xFF454545),
                            width: 2,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Color(0xFF454545),
                            width: 3,
                          ),
                        ),
                        suffixIcon: const Icon(
                          Icons.person,
                          color: Color(0xFF90B77D),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Password
                    TextField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: const TextStyle(color: Color(0xFF454545)),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        filled: true,
                        fillColor: const Color(0xFFEBF4E1),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Color(0xFF454545),
                            width: 2,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Color(0xFF454545),
                            width: 3,
                          ),
                        ),
                        suffixIcon: const Icon(
                          Icons.lock,
                          color: Color(0xFF90B77D),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Forgot password
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              value: isCheck,
                              onChanged: (bool? value) {
                                setState(() {
                                  isCheck = value ?? false;
                                });
                              },
                              activeColor: Colors.white,
                              checkColor: const Color(0xFF454545),
                            ),
                            const Text(
                              "Remember me",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),

                        // Forgot Password as link
                        RichText(
                          text: TextSpan(
                            text: "Forgot Password?",
                            style: const TextStyle(
                              color: Color(0xFF454545),
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.none,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                // TODO: Add forgot password logic
                                print("Forgot Password clicked");
                              },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),

                    // Login
                    ElevatedButton(
                      onPressed: () {
                        print(
                          "Username: ${emailController.text}, Password: ${passwordController.text}",
                        );

                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const UserLayout(child: UserHome()),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFEBF4E1),
                        foregroundColor: const Color(0xFF454545),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        elevation: 4,
                      ),
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    const SizedBox(height: 16),

                    // Register
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: "Don't have an account? ",
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                        children: [
                          TextSpan(
                            text: "Create a new account",
                            style: const TextStyle(
                              color: Color(0xFF454545),
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.none,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Register(),
                                  ),
                                );
                              },
                          ),
                        ],
                      ),
                    ),
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
