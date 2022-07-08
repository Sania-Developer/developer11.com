import 'package:developer11/portfolio/portfoliopages.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Portofolio extends StatelessWidget {
  const Portofolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: PortfolioPage(),
      ),
    );
  }
}

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({Key? key}) : super(key: key);

  @override
  _PortfolioPageState createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          extendBody: true,
          backgroundColor: const Color(0xff111111),
          appBar: AppBar(
            backgroundColor: const Color(0xff111111),
            bottom: const TabBar(
              indicatorColor: Color(0xfffe702b),
              labelColor: Color(0xfffe702b),
              unselectedLabelColor: Colors.white,
              tabs: [
              Tab(child: Text("ALL")),
              Tab(icon: Icon(FontAwesomeIcons.wordpress,)),
              Tab(icon: Icon(FontAwesomeIcons.code,)),
              Tab(icon: Icon(FontAwesomeIcons.react,)),
            ]),

          ),
          body: const TabBarView(
            children: [
              All(),
              Wordpress(),
              Codeigniter(),
              React(),
            ],
          ),
        ),
      ),
    );
  }
}
