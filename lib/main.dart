import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/home_ui.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(
    FlutterApplication1(),
  );
}

//------------------------------------

class FlutterApplication1 extends StatefulWidget {
  const FlutterApplication1({super.key});

  @override
  State<FlutterApplication1> createState() => _FlutterApplication1State();
}

class _FlutterApplication1State extends State<FlutterApplication1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeUi(),
      theme: ThemeData(
        textTheme: GoogleFonts.kanitTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}