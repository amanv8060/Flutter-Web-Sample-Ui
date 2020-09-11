import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_client/constants.dart' as global;

import 'mainPage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var _height, _width;

  @override
  Widget build(BuildContext context) {
    _width = MediaQuery.of(context).size.width;
    _height = MediaQuery.of(context).size.height;

    final _padding = _width / 100;
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: _height,
          width: _width,
          decoration: BoxDecoration(

              // color: Colors.white10,
              image: DecorationImage(
                  image: AssetImage("assets/login.png"), fit: BoxFit.contain)),
          child: Center(
            child: Container(
              padding: EdgeInsets.only(
                left: _padding,
                right: _padding,
              ),
              height: _width > 1200 ? _width / 4 : _width / 3.5,
              width: _width > 1200 ? _width / 4.5 : _width / 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "IPengine.dev",
                          style: TextStyle(
                              fontSize: _padding * 1.9,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Innovative Source for IP Address Data",
                          style:
                              TextStyle(color: Colors.grey, fontSize: _padding),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MaterialButton(
                            child: Image.asset(
                              "assets/googleSign.png",
                              width: _padding * 10,
                              height: _padding * 3,
                              fit: BoxFit.fill,
                            ),
                            onPressed: () => Navigator.pushReplacement(
                                context,
                                PageRouteBuilder(
                                    pageBuilder: (c, a1, a2) => MainPage(),
                                    transitionDuration:
                                        Duration(milliseconds: 1000),
                                    transitionsBuilder: (c, anim, a2, child) =>
                                        FadeTransition(
                                          opacity: anim,
                                          child: child,
                                        ))),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: _width / 100,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "By signing in you accept our",
                            style: TextStyle(fontSize: _width / 100),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Terms of Service ",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: _width / 100,
                                color: Colors.grey),
                          ),
                          Text(
                            "&",
                            style: TextStyle(fontSize: _width / 100),
                          ),
                          Text(
                            "Privacy Policy ",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: _width / 100,
                                color: Colors.grey),
                          )
                        ],
                      ),

                      // SizedBox(height:_width/20,)
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
