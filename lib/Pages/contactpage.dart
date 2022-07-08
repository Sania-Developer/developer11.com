import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:progress_state_button/iconed_button.dart';
import 'package:progress_state_button/progress_button.dart';
import 'package:http/http.dart' as http;

class Contactme extends StatelessWidget {
  const Contactme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ContactmePage(),
    );
  }
}

class ContactmePage extends StatefulWidget {
  const ContactmePage({Key? key}) : super(key: key);

  @override
  _ContactmePageState createState() => _ContactmePageState();
}

final nameController = TextEditingController();
final subjectController = TextEditingController();
final emailController = TextEditingController();
final messageController = TextEditingController();

Future sendEmail() async {
  final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
  const serviceId = 'service_ha29wtj';
  const templateId = 'template_mg8qn8f';
  const userId = 'user_VyWWa4UaRSZ8Pyjfv7UHk';
  final response = await http.post(url,
      headers: {'Content-Type': 'application/json'},//This line makes sure it works for all platforms.
      body: json.encode({
        'service_id': serviceId,
        'template_id': templateId,
        'user_id': userId,
        'template_params': {
          'user_name': nameController.text,
          'user_email': emailController.text,
          'user_message': messageController.text,
          'user_subject': subjectController.text
        }
      }));
  return response.statusCode;
}

class _ContactmePageState extends State<ContactmePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: const Color(0xff111111),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                child: Row(
                  children: const [
                    Text("GET IN  ",
                        style: TextStyle(
                            fontSize: 35.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Poppin",
                            color: Colors.white)),
                    Text("TOUCH ",
                        style: TextStyle(
                            fontSize: 35.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Poppin",
                            color: Color(0xfffe702b))),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(10, 40, 318, 0),
                child: Text(
                  "DON'T BE SHY!",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Poppin",
                      fontSize: 22,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
                child: Text(
                  "Feel free to get in touch with me. I am always open to discussing new projects, creative ideas or opportunities to be part of your visions.!",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Poppin",
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                      child: Icon(
                        Icons.mail,
                        color: Color(0xfffe702b),
                        size: 40,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: const [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 160, 0),
                          child: Text(
                            "MALE ME",
                            style: TextStyle(
                              color: Color(0xff797979),
                              fontSize: 16,
                              fontFamily: "Poppin",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Text(
                          "wajiddeveloper11@gmail.com",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: "Poppin"),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                      child: Icon(
                        Icons.call,
                        color: Color(0xfffe702b),
                        size: 40,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: const [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 160, 0),
                          child: Text(
                            "CALL ME",
                            style: TextStyle(
                              color: Color(0xff797979),
                              fontSize: 16,
                              fontFamily: "Poppin",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 100),
                          child: Text(
                            "+923215130503",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: "Poppin"),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                      labelText: "YOUR NAME",
                      filled: true,
                      fillColor: const Color(0xff252525),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35.0),
                          borderSide: const BorderSide(color: Color(0xff252525))),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35.0),
                          borderSide: const BorderSide(color: Color(0xfffe702b))),
                      labelStyle: const TextStyle(color: Color(0xff6F6F6F))),
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                      labelText: "YOUR EMAIL",
                      filled: true,
                      fillColor: const Color(0xff252525),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35.0),
                          borderSide: const BorderSide(color: Color(0xff252525))),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35.0),
                          borderSide: const BorderSide(color: Color(0xfffe702b))),
                      labelStyle: const TextStyle(color: Color(0xff6F6F6F))),
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: TextField(
                  controller: subjectController,
                  decoration: InputDecoration(
                      labelText: "YOUR SUBJECT",
                      filled: true,
                      fillColor: const Color(0xff252525),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35.0),
                          borderSide: const BorderSide(color: Color(0xff252525))),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35.0),
                          borderSide: const BorderSide(color: Color(0xfffe702b))),
                      labelStyle: const TextStyle(color: Color(0xff6F6F6F))),
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: TextField(
                  controller: messageController,
                  minLines: 1,
                  maxLines: 100,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                      labelText: "YOUR MESSAGE",
                      filled: true,
                      fillColor: const Color(0xff252525),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35.0),
                          borderSide: const BorderSide(color: Color(0xff252525))),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35.0),
                          borderSide: const BorderSide(color: Color(0xfffe702b))),
                      labelStyle: const TextStyle(color: Color(0xff6F6F6F))),
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ProgressButton.icon(iconedButtons: {
                  ButtonState.idle:
                  const IconedButton(
                      text: "Send",
                      icon: Icon(Icons.send,color: Colors.white),
                      color: Color(0xfffe702b)),
                  ButtonState.loading:
                  const IconedButton(
                      text: "Loading",
                      color: Color(0xfffe702b)),
                  ButtonState.fail:
                  IconedButton(
                      text: "Failed",
                      icon: const Icon(Icons.cancel,color: Colors.white),
                      color: Colors.red.shade300),
                  ButtonState.success:
                  IconedButton(
                      text: "Success",
                      icon: const Icon(Icons.check_circle,color: Colors.white,),
                      color: Colors.green.shade400)
                },
                    onPressed: (){
                      sendEmail();
                    },
                    state: ButtonState.idle
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


