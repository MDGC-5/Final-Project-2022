import 'package:flutter/material.dart';
import 'package:flutterforbeginners2/screens/otp.dart';
import 'package:flutterforbeginners2/utils/defaults.dart';
import 'package:flutterforbeginners2/widgets/mywidget.dart';

import 'navbar.dart';

final countrycode = "+91";

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  MyConfig _myconfig = MyConfig();

  TextEditingController cellphoneControler = TextEditingController();

  String devicetokenid = "";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/images/signinbg.png'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyInputField(
                    keyboardtype: TextInputType.number,
                    myicon: Icon(Icons.phone, color: Colors.amber,),
                    mycontroller: cellphoneControler,
                    hidedata: false,
                    hinttext: "Enter phone"),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(
                    btnwidth: size.width * 0.851,
                    btntextsize: 15,
                    buttontext: 'SEND OTP',
                    textcolor: Colors.black,
                    onTap: () {
                      submit();
                    },
                    bgcolor: Colors.amber)
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(
                    btnwidth: size.width * 0.851,
                    btntextsize: 15,
                    buttontext: 'CONTINUE WITHOUT LOGIN',
                    textcolor: Colors.black,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                      );
                    },
                    bgcolor: Colors.amber)
              ],
            ),
            SizedBox(
              height: 20,
            ),
            TermCondition(),
            SizedBox(
              height: 20,
            ),
            // Padding(
            //   padding: const EdgeInsets.only(right: 40),
            //   child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            //     Text(
            //       "SIGN IN",
            //       style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            //     ),
            //     SizedBox(
            //       width: _myconfig.myWidth,
            //     ),
            //     InkWell(
            //       onTap: () {
            //         // Navigator.pop(context);
            //         Navigator.push(
            //           context,
            //           MaterialPageRoute(builder: (context) => otpscreen()),
            //         );
            //       },
            //       child: Container(
            //         decoration: BoxDecoration(
            //           color: Colors.white,
            //           borderRadius: BorderRadius.circular(20),
            //           boxShadow: [
            //             BoxShadow(
            //               color: Colors.grey,
            //               blurRadius: 10,
            //               offset: Offset(0, 2), // Shadow position
            //             ),
            //           ],
            //         ),
            //         child: CircleAvatar(
            //           backgroundColor: Colors.white,
            //           child: Icon(
            //             Icons.arrow_forward,
            //             size: _myconfig.myIconSize,
            //             color: Colors.black,
            //           ),
            //           // child: Image.asset(
            //           //   "assets/images/forwordicon.png",
            //           //   width: 20,
            //           // ),
            //         ),
            //       ),
            //     ),
            //   ]),
            // ),
            SizedBox(
              height: 130,
            ),
          ],
        ),
      ),
    );
  }

  void submit() {
    if (cellphoneControler.text.isEmpty) {
      _myconfig.toast(msg: "Please Enter Cell Phone");
      return;
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => otpscreen()),
      );
    }
  }
}
