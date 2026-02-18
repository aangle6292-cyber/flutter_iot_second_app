import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/signin_ui.dart';
import 'package:flutter_application_1/views/signup_ui.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeUi extends StatelessWidget {
  const HomeUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          children: [
            SizedBox(
              height: 250.0,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: Image.asset(
                'images/logo.png',
                width: 250.0,
                height: 250.0,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 100.0,
            ),
            Text(
              'สวัสดีชาวไทย IoT SAU',
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            Text(
              'Sounteast Asia University',
              style: GoogleFonts.itim(
                fontSize: 22.0,
                fontWeight: FontWeight.w100,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            Text(
              'Created by Sugit IOT-SAU 2026',
              style: GoogleFonts.itim(
                fontSize: 22.0,
                fontWeight: FontWeight.w100,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginUi(),
                      ),
                    );
                  },
                  child: Text('LOGIN'),
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(120.0, 40.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignupUi(),
                      ),
                    );
                  },
                  child: Text(
                    'SIGN UP',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(120.0, 40.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    backgroundColor: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ],
            )
          ],
        )),
      ),
    );
  }
}