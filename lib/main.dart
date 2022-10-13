import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:panel/profile_page.dart';
import 'package:panel/side_Menu.dart';
//import 'package:panel/Dashboard/dashboard_screen.dart';

//import 'components/side_Menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ' Admin Panel',
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Musayi")),
        body: Body(),
        drawer: SideMenu());
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Profile();
    /*Column(
      children: [        
        Row(
          children: [
            Text(
              "Dashboard",
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(width: 50),
            ProfileCard()
          ],
        ),
      ],
    );*/
  }
}
