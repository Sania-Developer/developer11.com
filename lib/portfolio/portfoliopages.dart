import 'package:developer11/portfolio/portfolioClass.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class All extends StatelessWidget {
  const All({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBody: true,
        backgroundColor: const Color(0xff111111),
        body: Center(
          child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return GestureDetector(
                    onTap: () {
                      ShowProjecInformatio(
                          context,
                          portfolio[index].images,
                          portfolio[index].Project,
                          portfolio[index].category,
                          portfolio[index].Projecturl);
                    },
                    child: Card(
                      child: Image.asset(portfolio[index].images),
                    ));
              }),
        ),
      ),
    );
  }
}

class Wordpress extends StatelessWidget {
  const Wordpress({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    List<MyPortfolio> filterData =[];
    filterData.addAll(portfolio);
    filterData.retainWhere((i){
      return i.category.contains("CMS: Wordpress");
    });
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBody: true,
        backgroundColor: const Color(0xff111111),
        body: Center(
          child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) {
                return GestureDetector(
                    onTap: () {
                      ShowProjecInformatio(
                          context,
                          filterData[index].images,
                          filterData[index].Project,
                          filterData[index].category,
                          filterData[index].Projecturl);
                    },
                    child: Card(
                      child: Image.asset(filterData[index].images),
                    ));
              }),
        ),
      ),
    );
  }
}

class Codeigniter extends StatelessWidget {
  const Codeigniter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBody: true,
        backgroundColor: const Color(0xff111111),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                GestureDetector(
                  onTap: (){
                    ShowProjecInformatio(
                        context,
                        portfolio[1].images,
                        portfolio[1].Project,
                        portfolio[1].category,
                        portfolio[1].Projecturl);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset(portfolio[1].images),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class React extends StatelessWidget {
  const React({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    List<MyPortfolio> filterData =[];
    filterData.addAll(portfolio);
    filterData.retainWhere((i){
      return i.category.contains("Library: React");
    });
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBody: true,
        backgroundColor: const Color(0xff111111),
        body: Center(
          child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return GestureDetector(
                    onTap: () {
                      ShowProjecInformatio(
                          context,
                          filterData[index].images,
                          filterData[index].Project,
                          filterData[index].category,
                          filterData[index].Projecturl);
                    },
                    child: Card(
                      child: Image.asset(filterData[index].images),
                    ));
              }),
        ),
      ),
    );
  }
}
ShowProjecInformatio(context, image, project, category, ProjectUrl) {
  return showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: Material(
            type: MaterialType.transparency,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: 500,
                height: 400,
                decoration: BoxDecoration(
                  color: const Color(0xff111111),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                      child: Row(
                        children: [
                          const Icon(
                            FontAwesomeIcons.file,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Project: $project",
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontFamily: "Poppin"),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(12, 5, 0, 0),
                      child: Row(
                        children: [
                          const Icon(
                            FontAwesomeIcons.code,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "$category",
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontFamily: "Poppin"),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(12, 5, 0, 0),
                      child:RichText(
                        text: TextSpan(
                          children:[
                            const TextSpan(text: "Preview: ",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                ),
                            TextSpan(text: " $ProjectUrl",
                              style: const TextStyle(
                                decoration: TextDecoration.underline,
                                color: const Color(0xfffe702b),
                              ),
                              recognizer: TapGestureRecognizer()..onTap = (){
                                launch("https://$ProjectUrl");
                              },
                            ),

                          ]
                        ),
                      )
                      ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(image),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      });
}

