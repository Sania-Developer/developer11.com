import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:developer11/Pages/aboutpage.dart';
import 'package:developer11/Pages/contactpage.dart';
import 'package:developer11/Pages/homepage.dart';
import 'package:developer11/portfolio/portfolio.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final navigationkey = GlobalKey<CurvedNavigationBarState>();
  int Index = 0;
  @override
  Widget build(BuildContext context) {
    final screens = [
      const HomePage(),
      const AboutmePage(),
      const PortfolioPage(),
      const Contactme(),
    ];
    final items = <Widget>[
      const Icon(
        Icons.home,
        size: 30,
        color: Colors.white,
      ),
      const Icon(
        Icons.person,
        size: 30,
        color: Colors.white,
      ),
      const Icon(
        FontAwesomeIcons.briefcase,
        size: 30,
        color: Colors.white,
      ),
      const Icon(
        Icons.account_box,
        size: 30,
        color: Colors.white,
      ),
    ];
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xff111111),
        body: screens[Index],
        bottomNavigationBar: CurvedNavigationBar(
          key: navigationkey,
          height: 50.0,
          items: items,
          index: Index,
          backgroundColor: Colors.transparent,
          animationDuration: const Duration(milliseconds: 300),
          buttonBackgroundColor: const Color(0xfffe702b),
          color: const Color(0xff2b2a2a),
          onTap: (index) {
            setState(() {
              Index = index;
            });
          },
        ),
      ),
    );
  }
}
