import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:smart_kandang/screen/home/home_page.dart';
import 'package:smart_kandang/screen/login/login.dart';
import 'package:smart_kandang/constants.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Kandang',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: PrimaryColor,
          textTheme: GoogleFonts.robotoTextTheme(Theme.of(context).textTheme)),
      home: HomePage(),
    );
  }
}
