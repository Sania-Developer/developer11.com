import 'package:developer11/Pages/aboutpage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
        child: Scaffold(
          backgroundColor: const Color(0xff111111),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage("images/developer11.png"),
                        fit: BoxFit.contain),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
                child: Text(
                  "I'M WAJID KHAN",
                  style:  TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Poppin",
                      color:  Color(0xfffe702b)),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(0.0),
                child: Text(
                  "WEB DEVELOPER",
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Poppin",
                      color: Colors.white),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(25.0),
                child:  Text(
                  "I'm a Pakistan based full stack web developer focused on crafting clean & user‑friendly experiences, I am passionate about building excellent websites that improves the lives of those around me.",
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                    fontFamily: "Poppin",
                  ),
                ),
              ),
              // ignore: deprecated_member_use
              OutlinedButton(
                onPressed: () {
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const AboutmePage()));
                  });
                },
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    side: const BorderSide(width: 3.0, color: Color(0xfffe702b)),
                  ),
                child: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text("MORE ABOUT ME",
                      style: TextStyle(
                          fontFamily: "Poppin",
                          color: Colors.white,
                          fontWeight: FontWeight.w700)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
