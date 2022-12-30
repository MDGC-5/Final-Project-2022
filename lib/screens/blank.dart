/* THIS IS BLANK FILE FOR FUTURE USE*/

import 'package:flutter/material.dart';
import 'package:flutterforbeginners2/utils/defaults.dart';

class Blank extends StatefulWidget {
  Blank({Key? key}) : super(key: key);

  @override
  _BlankState createState() => _BlankState();
}

class _BlankState extends State<Blank> {
  MyConfig _myconfig = MyConfig();

  TextEditingController democontroller = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 80,
        elevation: _myconfig.myElevation,
        leading: InkWell(
          onTap: () {
            // Navigator.pushReplacement(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) => BottomNavbarScreen(),
            //     ));
          },
          child: Image.asset(
            "assets/images/back.png",
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Text(
            "Orders",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Container(
        child: TextFormField(
          controller: democontroller,
          decoration:
              InputDecoration(prefixIcon: Icon(Icons.accessibility_new_sharp)),
        ),
      ),
    );
  }
}
