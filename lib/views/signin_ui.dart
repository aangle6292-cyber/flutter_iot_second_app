import 'package:flutter/material.dart';

class LoginUi extends StatelessWidget {
  const LoginUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: SafeArea(
        child: Center(
          child: Container(
            width: double.infinity,
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Back Button
                  Icon(Icons.arrow_back),

                  const SizedBox(height: 20),

                  /// Illustration
                  Center(
                    child: Image.asset(
                      "images/logo.png",
                      alignment: AlignmentGeometry.centerLeft, // เปลี่ยนเป็นรูปของคุณ
                      height: 250,
                    ),
                  ),

                  const SizedBox(height: 20),

                  /// Title
                  const Text(
                    "Welcome Back,",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 5),

                  const Text(
                    "Make it work, make it right, make it fast.",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),

                  const SizedBox(height: 25),

                  /// Email
                  buildTextField(Icons.person, "E-Mail"),

                  /// Password
                  buildTextField(Icons.fingerprint, "Password",
                      isPassword: true),

                  /// Forget password
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Forget Password?",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),

                  /// Login Button
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text("LOGIN"),
                    ),
                  ),

                  const SizedBox(height: 20),

                  const Center(child: Text("OR")),

                  const SizedBox(height: 15),

                  /// Google Login
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: OutlinedButton.icon(
                      icon: Image.asset(
                        "images/googlelogo.png",
                        height: 20,
                      ),
                      label: const Text("Sign-In with Google"),
                      onPressed: () {},
                    ),
                  ),

                  const SizedBox(height: 20),

                  /// Signup text
                  Center(
                    child: RichText(
                      text: TextSpan(
                        text: "Don't have an Account? ",
                        style: const TextStyle(color: Colors.black),
                        children: [
                          TextSpan(
                            text: "Signup",
                            style: const TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTextField(IconData icon, String hint,
      {bool isPassword = false}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextField(
        obscureText: isPassword,
        decoration: InputDecoration(
          prefixIcon: Icon(icon),
          suffixIcon:
              isPassword ? const Icon(Icons.visibility) : null,
          hintText: hint,
          filled: true,
          fillColor: Colors.grey[100],
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
