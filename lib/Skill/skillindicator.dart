import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';


class SkillIndicators extends StatelessWidget {

  final double percentage1,percentage2;
  final String textPercant1,textPercant2;
  SkillIndicators({required this.percentage1, required this.textPercant1,required this.percentage2, required this.textPercant2});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: CircularPercentIndicator(
            radius: 60.0,
            lineWidth: 9.0,
            percent: percentage1,
            center:  Text(
              textPercant1,
              style: const TextStyle(fontSize: 20, color: Colors.white,fontFamily: "Poppin",),
            ),
            progressColor: const Color(0xfffe702b),
            backgroundColor: const Color(0xff252525),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: CircularPercentIndicator(
            radius: 60.0,
            lineWidth: 9.0,
            percent: percentage1,
            center: Text(
              textPercant2,
              style: const TextStyle(fontSize: 20, color: Colors.white,fontFamily: "Poppin",),
            ),
            progressColor: const Color(0xfffe702b),
            backgroundColor: const Color(0xff252525),
          ),
        )
      ],
    );
  }
}