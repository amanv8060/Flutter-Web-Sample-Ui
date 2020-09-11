import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'constants.dart' as global;

class MyAppBar extends StatefulWidget {
  final height, width;

  const MyAppBar({Key key, this.height, this.width}) : super(key: key);
  @override
  _MyAppBarState createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
        valueListenable: global.currentPage,
        builder: (context, page, _) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "IPengine.dev",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Innovative Source for IP Address Data",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              Row(
                children: [
                  GestureDetector(
                    child: Column(
                      children: [
                        global.currentPage.value == 0
                            ? Icon(
                                Icons.location_on_outlined,
                                color: Colors.orange,
                              )
                            : Container(),
                        Text("Home"),
                      ],
                    ),
                    onTap: () {
                      global.currentPage.value = 0;
                    },
                  ),
                  SizedBox(
                    width: widget.width / 40,
                  ),
                  GestureDetector(
                    child: Column(
                      children: [
                        global.currentPage.value == 1
                            ? Icon(
                                Icons.location_on_outlined,
                                color: Colors.orange,
                              )
                            : Container(),
                        Text("Pricing"),
                      ],
                    ),
                    onTap: () {
                      global.currentPage.value = 1;
                    },
                  ),
                  SizedBox(
                    width: widget.width / 40,
                  ),
                  GestureDetector(
                      child: Column(
                        children: [
                          global.currentPage.value == 2
                              ? Icon(
                                  Icons.location_on_outlined,
                                  color: Colors.orange,
                                )
                              : Container(),
                          Text("Documentation"),
                        ],
                      ),
                      onTap: () {
                        global.currentPage.value = 2;
                      }),
                  SizedBox(
                    width: widget.width / 20,
                  ),
                  MaterialButton(
                    child: Image.asset(
                      "assets/profile.png",
                      width: 52,
                      height: 52,
                    ),
                    onPressed: () {
                      global.currentPage.value = 3;
                    },
                  )
                ],
              )
            ],
          );
        });
  }
}
