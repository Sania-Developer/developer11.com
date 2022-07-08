import 'package:developer11/Skill/skill_section.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../personal_info.dart';

class Aboutme extends StatelessWidget {
  const Aboutme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AboutmePage(),
    );
  }
}

class AboutmePage extends StatefulWidget {
  const AboutmePage({Key? key}) : super(key: key);

  @override
  _AboutmePageState createState() => _AboutmePageState();
}

class _AboutmePageState extends State<AboutmePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBody: true,
        backgroundColor: const Color(0xff111111),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const PersonalInfoSection(),
                const SkillSection(),
                const Text(
                  "Experience & Education",
                  style: TextStyle(
                      fontSize: 25.0,
                      fontFamily: "Poppin",
                      color: Colors.white),
                ),
                ExperienceEducation(
                  text1: "2018-Present",
                  text2: "WEB DEVELOPER",
                  text3: "-FREELANCE",
                ),
                ExperienceEducation(
                  text1: "2019-2020",
                  text2: "WORDPRESS",
                  text3: "-ACUITY SOFTWARE",
                ),
                ExperienceEducation(
                  text1: "2020-2021",
                  text2: "CODEIGNITER",
                  text3: "-TRULY SUCCESSIVE",
                ),
                ExperienceEducation(
                  text1: "2017",
                  text2: "JS,PHP",
                  text3: "-UDEMY",
                ),
                ExperienceEducation(
                  text1: "2018",
                  text2: "WORDPRESS",
                  text3: "-DIGISKILLS",
                ),
                ExperienceEducation(
                  text1: "2018",
                  text2: "CODEIGNITER",
                  text3: "-UDEMY",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ExperienceEducation extends StatelessWidget {
  final String text1, text2, text3;
  ExperienceEducation(
      {required this.text1, required this.text2, required this.text3});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 0, 10),
              child: CircleAvatar(
                child: Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(6.0),
                      child: Icon(
                        FontAwesomeIcons.briefcase,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                backgroundColor: const Color(0xfffe702b),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 13, 0, 0),
              child: Container(
                width: 105,
                height: 20,
                decoration: BoxDecoration(
                  color: const Color(0xff2b2a2a),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Text(
                    text1,
                    style: const TextStyle(
                        color: Color(0xff797979), fontFamily: "Poppin"),
                  ),
                ),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(65.0, 0, 0, 0),
          child: Row(
            children: [
              Text(text2,
                  style: const TextStyle(
                      fontSize: 20,
                      fontFamily: "Poppin",
                      color: Colors.white,
                      fontWeight: FontWeight.w600)),
              Text(text3,
                  style: const TextStyle(
                      fontSize: 17,
                      fontFamily: "Poppin",
                      color: Color(0xffB0B0B0),
                      fontWeight: FontWeight.w500))
            ],
          ),
        )
      ],
    );
  }
}
