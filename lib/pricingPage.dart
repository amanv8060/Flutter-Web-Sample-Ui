import 'dart:html';

import 'package:flutter/material.dart';

class PricingPage extends StatefulWidget {
  PricingPage({Key key}) : super(key: key);

  @override
  _PricingPageState createState() => _PricingPageState();
}

class _PricingPageState extends State<PricingPage> {
  var _height, _width;
  @override
  Widget build(BuildContext context) {
    _width = MediaQuery.of(context).size.width;
    _height = MediaQuery.of(context).size.height;
    return Row(
      children: [
        Expanded(
          flex: 30,
          child: Stack(
            children: [
              Card(
                  // margin: EdgeInsets.only(left: _width/70,top:_height/70 ),
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.grey, width: 2),
                      borderRadius: BorderRadius.circular(20)),
                  elevation: 10,
                  child: Container(
                    margin: EdgeInsets.only(top: _height / 4.5),
                    padding: EdgeInsets.fromLTRB(
                        _width / 70, _height / 30, _width / 70, _height / 25),
                    height: _height / 2,
                    width: _width / 3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // SizedBox(width: _width/30,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          textDirection: TextDirection.ltr,
                          children: [
                            Text(
                              "Geolocation",
                              style: TextStyle(
                                  color: Color(0xff555555),
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "ASN",
                              style: TextStyle(
                                  color: Color(0xff555555),
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Abuse",
                              style: TextStyle(
                                  color: Color(0xff555555),
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Privacy Detection",
                              style: TextStyle(
                                  color: Color(0xff555555),
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Hosted Domains",
                              style: TextStyle(
                                  color: Color(0xff555555),
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Carrier",
                              style: TextStyle(
                                  color: Color(0xff555555),
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Company",
                              style: TextStyle(
                                  color: Color(0xff555555),
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "IP Ranges",
                              style: TextStyle(
                                  color: Color(0xff555555),
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
              Material(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  margin: EdgeInsets.all(_height / 80),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffE8F1FF),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  height: _height / 5,
                  width: _width / 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "\$0.00 / Free",
                        style: TextStyle(
                            fontSize: _width / 70,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: _width / 90,
                      ),
                      Container(
                        height: 2,
                        color: Colors.black,
                        width: _width / 50,
                      ),
                      SizedBox(
                        height: _width / 90,
                      ),
                      Text(
                        "Can you imagine all these expensive services been served for free!?",
                        style: TextStyle(
                            fontSize: _width / 80, color: Colors.grey),
                        softWrap: true,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Expanded(flex: 20, child: Container()),
        Expanded(flex: 60, child: Image.asset("assets/pricing.png"))
      ],
    );
  }
}
