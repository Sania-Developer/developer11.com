import 'package:flutter/material.dart';

import 'constants.dart';

class PersonalInfoSection extends StatelessWidget {
  const PersonalInfoSection({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: const [
              Text("ABOUT ",
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Poppin",
                      color: Colors.white)),
              Text("ME ",
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Poppin",
                      color: Color(0xfffe702b))),
            ],
          ),
        ),
        const Text("PERSONAL INFO ",
            style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                fontFamily: "Poppin",
                color: Colors.white)),
        Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
          child:Container(
            width: 200,
            height: 200,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage("images/developer11.png"),
                  fit: BoxFit.contain
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Column(
            children: [
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: Text(
                      "First Name",
                      style: kPersonalInfoTextstyle,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(112, 10, 0, 0),
                    child: Text(
                      "Last Name",
                      style: kPersonalInfoTextstyle,
                    ),
                  ),
                ],
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: Text(
                      "Wajid",
                      style: kPersonalInfoTextstyle1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(153, 10, 0, 0),
                    child: Text(
                      " Khan",
                      style: kPersonalInfoTextstyle1,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
          child: Column(
            children: [
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: Text(
                      "Age",
                      style: kPersonalInfoTextstyle,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(163, 10, 0, 0),
                    child: Text(
                      "Nationality",
                      style: kPersonalInfoTextstyle,
                    ),
                  ),
                ],
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: Text(
                      "20",
                      style: kPersonalInfoTextstyle1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(172, 10, 0, 0),
                    child: Text(
                      "  Pakistan",
                      style: kPersonalInfoTextstyle1,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
          child: Column(
            children: [
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: Text(
                      "Adress",
                      style: kPersonalInfoTextstyle,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(140, 10, 0, 0),
                    child: Text(
                      "Lauguages",
                      style: kPersonalInfoTextstyle,
                    ),
                  ),
                ],
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: Text(
                      "Jhelum",
                      style: kPersonalInfoTextstyle1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(135, 10, 0, 0),
                    child: Text(
                      "Urdu,Pashto,English",
                      style: kPersonalInfoTextstyle1,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
          child: Column(
            children: [
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: Text(
                      "Phone",
                      style: kPersonalInfoTextstyle,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(145, 10, 0, 0),
                    child: Text(
                      "Gmail",
                      style: kPersonalInfoTextstyle,
                    ),
                  ),
                ],
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: Text(
                      "+923215130503",
                      style: kPersonalInfoTextstyle1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(70, 10, 0, 0),
                    child: Text(
                      "wajiddeveloper11",
                      style: kPersonalInfoTextstyle1,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 50, 0, 20),
          child: Row(
            children: [
              InformationBox(text1: "4+",text2: "YEARS\nOF EXPERIENCE",),
              const SizedBox(
                width: 30,
              ),
              InformationBox(text1: "43+",text2: "COMPLETED\nPROJECTS",),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 20, 0, 20),
          child: Row(
            children: [
              InformationBox(text1: "43+",text2: "HAPPY\nCUSTAMORS",),

              const SizedBox(
                width: 30,
              ),
              InformationBox(text1: "3+",text2: "AWARS\nWONS",),

            ],
          ),
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
class InformationBox extends StatelessWidget {
  final String text1,text2;

  InformationBox({required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: const Color(0xff252525)),
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20,5,0,5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                text1,
                style: const TextStyle(
                    color: Color(0xfffe702b),
                    fontSize: 30,
                    fontFamily: "Poppin",
                    fontWeight: FontWeight.bold
                    ),

            ),
               Text(
                text2,
                style: const TextStyle(
                  fontFamily: "Poppin",
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),

          ],
        ),
      ),
    );
  }
}