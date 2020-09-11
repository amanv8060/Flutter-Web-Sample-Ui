import 'package:flutter/material.dart';

class DocsPage extends StatefulWidget {
  DocsPage({Key key}) : super(key: key);

  @override
  _DocsPageState createState() => _DocsPageState();
}

class _DocsPageState extends State<DocsPage> {
  final _controller = ScrollController();
  var _height, _width;
  var fontSize;
  @override
  Widget build(BuildContext context) {
    _width = MediaQuery.of(context).size.width;
    _height = MediaQuery.of(context).size.height;
    fontSize = _width / 90;
    return Expanded(
      child: Row(
        children: [
          Expanded(
            flex: 20,
            child: Card(
              margin: EdgeInsets.only(left: _width / 70, top: _height / 70),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              elevation: 10,
              child: Container(
                  padding: EdgeInsets.fromLTRB(
                      _width / 70, _height / 30, _width / 70, 10),
                  height: _height / 1.5,
                  width: _width / 3,
                  child: Scrollbar(
                    controller: _controller,
                    isAlwaysShown: true,
                    radius: Radius.circular(10),
                    thickness: 10,
                    child: SingleChildScrollView(
                        controller: _controller,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                  text: "Getting started with ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                      fontSize: fontSize),
                                  children: [
                                    TextSpan(
                                        text: "IPengine",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xffF8733A),
                                            fontSize: fontSize))
                                  ]),
                            ),
                            SimpleText(
                                textd: "\nIntroduction to IPengine",
                                fontSize: fontSize),
                            SimpleText(
                                textd: "Key Concepts", fontSize: fontSize),
                            SimpleText(textd: "Workflow", fontSize: fontSize),
                            SimpleText(
                                textd: "Writing Instructions",
                                fontSize: fontSize),
                            SimpleText(textd: "Task Types", fontSize: fontSize),
                            SimpleText(
                                textd: "First time using an API\n",
                                fontSize: fontSize),
                            Text(
                              "Customer Dashboard",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: fontSize),
                            ),
                            SimpleText(
                                textd: "Manage your Account",
                                fontSize: fontSize),
                            SimpleText(
                                textd: "Manage your projects",
                                fontSize: fontSize),
                            SimpleText(
                                textd: "Overview Tabs", fontSize: fontSize),
                            SimpleText(textd: "Tasks Tab", fontSize: fontSize),
                            SimpleText(
                                textd: "Quality Tab\n", fontSize: fontSize),
                            Text(
                              "Data Hosting",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: fontSize),
                            ),
                            SimpleText(
                                textd: "Secure Attachment Access\n",
                                fontSize: fontSize),
                            Text(
                              "Get Support",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: fontSize),
                            ),

                            SimpleText(
                                textd: "Communities",
                                fontSize: fontSize),
                          ],
                        )),
                  )),
            ),
          ),
          Expanded(
            flex: 60,
            child: Container(
              padding: EdgeInsets.only(left: _width / 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Introduction to IPengine",
                    softWrap: true,
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Easy Peasy Lemon Squeezy\n",
                    softWrap: true,
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                  Center(child: Image.asset("assets/docs.png",fit: BoxFit.fill,)),
                  Text(
                      " The quickest and easiest way to get started with IPinfo is to use one of our official libraries, which are available for many popular programming languages and frameworks. If you'd like to write your own library or interact directly with our API then the documentation below can help you.",
                      softWrap: true,
                      style: TextStyle(
                        color: Color(0xff555555),
                        fontSize: 22,
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SimpleText extends StatelessWidget {
  const SimpleText({
    Key key,
    @required this.textd,
    @required this.fontSize,
  }) : super(key: key);

  final textd;
  final fontSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(textd, style: TextStyle(fontSize: fontSize)),
    );
  }
}
