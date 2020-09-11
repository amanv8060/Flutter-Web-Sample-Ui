import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'header.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = ScrollController();
  var _height, _width;

  @override
  void initState() {
    super.initState();
  } 

  @override
  Widget build(BuildContext context) {
    _width = MediaQuery.of(context).size.width;
    _height = MediaQuery.of(context).size.height;
    return Expanded(
          child: Row(
        children: [
          Expanded(
            flex: 30,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "The Trusted Source for IP Address Data",
                    softWrap: true,
                    style: TextStyle(
                        fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "With IPengine, you can pinpoint your users’ locations, customize their experiences, prevent fraud, ensure compliance, and so much more.\n",
                    softWrap: true,
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                  Text(" \$0.00 per month, We know it’s expensive!\n\n",
                      style: TextStyle(
                        color: Color(0xffF0864B),
                        fontSize: 22,
                      )),
                  OutlineButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    borderSide: BorderSide(color: Colors.black, width: 2),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Text(
                        "Get Started",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(flex: 20, child: Container()),
          Expanded(
            flex: 30,
            child: Stack(
              children: [
                Card(
                  margin: EdgeInsets.only(
                      left: _width / 70, top: _height / 70),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  elevation: 10,
                  child: Container(
                      padding: EdgeInsets.fromLTRB(
                          _width / 70, _height / 30, _width / 70, 10),
                      height: _height / 2,
                      width: _width / 3,
                      child: Scrollbar(
                        controller: _controller,
                        isAlwaysShown: true,
                        radius: Radius.circular(10),
                        thickness: 10,
                        child: SingleChildScrollView(
                          controller: _controller,
                          child: Text(
                            '''{
        network: {
              ip: "8.8.8.8",
              hostname: "dns.google.",
              reverse: "2001:4860:4860::8844",
              asn: "15169"
        },
        location: {
              country: "United States"
        },
        arin: {
              name: "LVLT-GOGL-8-8-8",
              handle: "NET-8-8-8-0-1",
              parent: "NET-8-0-0-0-1",
              type: "ALLOCATION",
              range: "8.8.8.0-8.8.8.255",
              cidr: "NET-8-8-8-0-1",
              status: [
                      "active"{
        network: {
              ip: "8.8.8.8",
              hostname: "dns.google.",
              reverse: "2001:4860:4860::8844",
              asn: "15169"
        },
        location: {
              country: "United States"
        },
        arin: {
              name: "LVLT-GOGL-8-8-8",
              handle: "NET-8-8-8-0-1",
              parent: "NET-8-0-0-0-1",
              type: "ALLOCATION",
              range: "8.8.8.0-8.8.8.255",
              cidr: "NET-8-8-8-0-1",
              status: [
                      "active"{
        network: {
              ip: "8.8.8.8",
              hostname: "dns.google.",
              reverse: "2001:4860:4860::8844",
              asn: "15169"
        },
        location: {
              country: "United States"
        },
        arin: {
              name: "LVLT-GOGL-8-8-8",
              handle: "NET-8-8-8-0-1",
              parent: "NET-8-0-0-0-1",
              type: "ALLOCATION",
              range: "8.8.8.0-8.8.8.255",
              cidr: "NET-8-8-8-0-1",
              status: [
                      "active"{
        network: {
              ip: "8.8.8.8",
              hostname: "dns.google.",
              reverse: "2001:4860:4860::8844",
              asn: "15169"
        },
        location: {
              country: "United States"
        },
        arin: {
              name: "LVLT-GOGL-8-8-8",
              handle: "NET-8-8-8-0-1",
              parent: "NET-8-0-0-0-1",
              type: "ALLOCATION",
              range: "8.8.8.0-8.8.8.255",
              cidr: "NET-8-8-8-0-1",
              status: [
                      "active"
                    ''',
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                        ),
                      )),
                ),
                Material(
                  color: Colors.blueAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 8),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "I.P ",
                          style:
                              TextStyle(fontSize: 22, color: Colors.grey),
                        ),
                        Text(
                          "8.8.8.8",
                          style: TextStyle(
                              fontSize: 22, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
