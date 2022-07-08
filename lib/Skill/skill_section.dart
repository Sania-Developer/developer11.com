import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'skillindicator.dart';

class SkillSection extends StatelessWidget {
  const SkillSection({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(0, 30, 0, 15),
          child:  Text("MY SKILLS ",
              style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Poppin",
                  color: Colors.white)),
        ),
        SkillIndicators(percentage1: 1.0,textPercant1: "100%",percentage2: 1.0,textPercant2: "100%",),
        Skills(skill1: "HTML  ",skill2: "CSS",),
        const SizedBox(height: 20,),
        SkillIndicators(percentage1: 1.0,textPercant1: "100%",percentage2: 1.0,textPercant2: "100%",),

        Skills(skill1: "BOOTSTRAP",skill2: "JAVASCRIPT",),
        const SizedBox(height: 20,),
        SkillIndicators(percentage1: 1.0,textPercant1: "100%",percentage2: 0.6,textPercant2: "60%",),

        Skills(skill1: "JQUERY  ",skill2: "REACT",),

        const SizedBox(height: 20,),
        SkillIndicators(percentage1: 0.8,textPercant1: "80%",percentage2: 0.8,textPercant2: "80%",),

        Skills(skill1: "        PHP",skill2: "CODEIGNITER",),

        const SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: CircularPercentIndicator(
                radius: 60.0,
                lineWidth: 9.0,
                percent: 1.0,
                center: const Text(
                  "100%",
                  style:  TextStyle(fontSize: 25, color: Colors.white),
                ),
                progressColor: const Color(0xfffe702b),
                backgroundColor: const Color(0xff252525),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Center(
              child: Text(
                "WORDPRESS",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontFamily: "Poppin",
                ),
              ),
            ),
          ],
        ),
        const Divider(
          color:  Color(0xff252525),
          indent: 100,
          endIndent: 100,
        ),
      ],
    );
  }
}

class Skills extends StatelessWidget {

  final String skill1,skill2;
  Skills({required this.skill1,required this.skill2});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Text(
            skill1,
            style: const TextStyle(
              color: Colors.white,
              fontFamily: "Poppin",
              fontSize: 17,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            skill2,
            style: const TextStyle(
              color: Colors.white,
              fontFamily: "Poppin",
              fontSize: 17,
            ),
          ),
        ),
      ],
    );
  }
}

