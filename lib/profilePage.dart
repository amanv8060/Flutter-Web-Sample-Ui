import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
            child: Container(
                padding: EdgeInsets.fromLTRB(
                    _width / 70, _height / 30, _width / 70, 10),
                height: _height / 1.5,
                width: _width / 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   Column(

                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                        Container(
                      height: _height / 5,
                      width: _width / 8,
                      child: Image.asset(
                        "assets/profile.png",
                        fit: BoxFit.fill,
                        alignment: Alignment.centerLeft,
                      ),
                    ),
                    Text(
                      "\nMeliodas Ackerman",
                      style: TextStyle(
                          fontSize: _height / 40, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "dragons.sin@gmail.com",
                      style:
                          TextStyle(fontSize: _height / 60, color: Colors.grey),
                    ),
                    Text(
                      "\n\nYour IP",
                      style: TextStyle(
                          fontSize: _height / 60,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "192.24.84.123",
                      style: TextStyle(
                        fontSize: _height / 55,
                        color: Color(0xffFBBC05),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                     ],
                   ),
                   Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Material(
                      elevation: 10,
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        padding: EdgeInsets.only(left: _width/80),
                        height: _height / 20,
                        width: _width / 7,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset("assets/group2.png"),
                            Text("  Feedback")
                          ],
                        ),
                      ),

                    ),
                    SizedBox(height: _height/60,),
                    Material(
                      elevation: 10,
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        padding: EdgeInsets.only(left: _width/80),
                        height: _height / 20,
                        width: _width / 10,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset("assets/Group1.png"),
                              Text("Log Out",
                                  style: TextStyle(
                                    color: Colors.red,
                                  ))
                            ]),
                      ),
                    )
                     ],
                   )
                    
                  ],
                )),
          ),
          Container(
            width: 2,
            color: Colors.grey,
            height: _height / 2,
          ),
          Expanded(
            flex: 60,
            child: Container(
              padding: EdgeInsets.fromLTRB(
                  _width / 20, _height / 30, _width / 70, _height / 25),
              height: _height / 1.7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Api Key\n",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: _height / 50),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: _width / 90),
                    height: _height / 20,
                    width: _width / 5,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("ifadp-f9uef-89nuq-wgerh-ic41n-123e4-1423n"),
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Color(0xffDDDDDD),
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  SizedBox(
                    height: _height / 10,
                  ),
                  Text(
                    "Settings\n",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: _height / 50),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Material(
                            color: Color(0xffEEEEEE),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            elevation: 10,
                            child: Container(
                              padding:
                                  EdgeInsets.symmetric(horizontal: _width / 90),
                              height: _height / 20,
                              width: _width / 5,
                              child: Row(
                                children: [
                                  Text(
                                    "Edit Profile",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            )),
                        Material(
                            color: Color(0xffEEEEEE),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            elevation: 10,
                            child: Container(
                              padding:
                                  EdgeInsets.symmetric(horizontal: _width / 90),
                              height: _height / 20,
                              width: _width / 5,
                              child: Row(
                                children: [
                                  Text(
                                    "App Theme",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            )),
                        Material(
                            color: Color(0xffEEEEEE),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            elevation: 10,
                            child: Container(
                              padding:
                                  EdgeInsets.symmetric(horizontal: _width / 90),
                              height: _height / 20,
                              width: _width / 5,
                              child: Row(
                                children: [
                                  Text(
                                    "Change Owner",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            )),
                        Material(
                            color: Color(0xffEEEEEE),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            elevation: 10,
                            child: Container(
                              padding:
                                  EdgeInsets.symmetric(horizontal: _width / 90),
                              height: _height / 20,
                              width: _width / 5,
                              child: Row(
                                children: [
                                  Text(
                                    "Temporarily Deactive Account",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
