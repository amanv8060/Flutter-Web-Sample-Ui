import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ui_client/docsPage.dart';
import 'package:ui_client/header.dart';
import 'package:ui_client/homePage.dart';
import 'package:ui_client/pricingPage.dart';
import 'package:ui_client/profilePage.dart';
import 'constants.dart' as global;

class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var _height, _width;
  Widget homePage;
  Widget profilePage;
  Widget docsPage;
  Widget pricingPage;

  List<Widget> pages;

  @override
  void initState() {
    super.initState();
    homePage = HomePage();
    profilePage = ProfilePage();
    docsPage = DocsPage();
    pricingPage = PricingPage();
    pages = [homePage, pricingPage, docsPage, profilePage];
  }

  @override
  Widget build(BuildContext context) {
    _width = MediaQuery.of(context).size.width;
    _height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Stack(
            children: [
              ValueListenableBuilder<int>(
                valueListenable: global.currentPage,
                builder: (context, page, _) {
                  return Container(
                    height: _height,
                    width: _width,
                    padding: EdgeInsets.symmetric(
                        vertical: _height / 20, horizontal: _width / 20),
                    child: Column(
                      children: [
                        MyAppBar(
                          height: _height,
                          width: _width,
                        ),
                        pages[page]
                      ],
                    ),
                  );
                },
              ),
              Positioned(
                  child: Center(
                      child: Text(
                "Copyrighted",
                style: TextStyle(fontSize: _height / 5),
              ))),
              Positioned(
                bottom: _height / 20,
                right: _width / 20,
                child: Image.asset("assets/chat.png"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
