import 'package:flutter/material.dart';

class SignupUi extends StatelessWidget {
  const SignupUi({super.key});

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
                  Icon(Icons.arrow_back),

                  const SizedBox(height: 30),

                  Center(
                    child: Image.asset(
                      "images/logo.png", // เปลี่ยนเป็นไฟล์ของคุณ
                      height: 200,
                    ),
                  ),

                  const SizedBox(height: 20),

                  const Text(
                    "Get On Board!",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 5),

                  const Text(
                    "Create your profile to start your Journey.",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),

                  const SizedBox(height: 25),

                  buildTextField(Icons.person, "Full Name"),
                  buildTextField(Icons.email, "E-Mail"),
                  buildTextField(Icons.phone, "Phone No"),
                  buildTextField(Icons.fingerprint, "Password",
                      isPassword: true),

                  const SizedBox(height: 20),

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
                      child: const Text("SIGNUP"),
                    ),
                  ),

                  const SizedBox(height: 20),

                  const Center(child: Text("OR")),

                  const SizedBox(height: 15),

                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: OutlinedButton.icon(
                      icon: Image.asset(
                        "images/googlelogo.png",
                        height: 20,
                      ),
                      label: const Text("SIGN-IN WITH GOOGLE"),
                      onPressed: () {},
                    ),
                  ),

                  const SizedBox(height: 20),

                  Center(
                    child: RichText(
                      text: TextSpan(
                        text: "Already have an Account? ",
                        style: const TextStyle(color: Colors.black),
                        children: [
                          TextSpan(
                            text: "LOGIN",
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
