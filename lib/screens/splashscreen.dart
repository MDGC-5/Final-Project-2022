import 'package:flutter/material.dart';
import 'package:flutterforbeginners2/screens/registerscreen.dart';
import 'package:flutterforbeginners2/utils/defaults.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

MyConfig _myconfig = MyConfig();

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => RegisterScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Image.asset(
                  "assets/images/karmabg.png",
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  //height: double.infinity,
                  fit: BoxFit.fill,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.005,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(120.0),
                      child: Image.asset("assets/images/karmalogo.png"),
                    ),

                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.10,
                    ),
                    Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: _myconfig.myMargin * 2),
                        child: LinearProgressIndicator(
                          color: Colors.orange,
                          backgroundColor: Colors.black,
                          minHeight: 5,
                        )),
                    // Text("progressabar here"),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.20,
                    ),
                    Text(
                      "We serve you the great indian taste prepared",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: _myconfig.myMediumFontSize,
                          color: Colors.white),
                    ),
                    Text(
                      "with handpicked ingredients and expert chefs.",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: _myconfig.myMediumFontSize,
                          color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
