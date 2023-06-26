import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskly/screens/home.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Taskly",
      theme: ThemeData(
       primaryColor: Color(0xff4942E4),
        textTheme: TextTheme(
          displayLarge: GoogleFonts.poppins(
            color: Color(0xff4942E4),
            fontSize: 32,
            fontWeight: FontWeight.w600,
          )
        )
      ),
      home: HomeScreen(),
    );
  }
}
