// ignore_for_file: camel_case_types, unused_field

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutterforbeginners2/screens/navbar.dart';
import 'package:flutterforbeginners2/utils/defaults.dart';
import 'package:flutterforbeginners2/widgets/mywidget.dart';

import 'loginscreen.dart';

final countrycode = "+91";

class otpscreen extends StatefulWidget {
  otpscreen({Key? key}) : super(key: key);

  @override
  _otpscreenState createState() => _otpscreenState();
}

class _otpscreenState extends State<otpscreen> {
  MyConfig _myconfig = MyConfig();

  TextEditingController otp1 = TextEditingController();
  TextEditingController otp2 = TextEditingController();
  TextEditingController otp3 = TextEditingController();
  TextEditingController otp4 = TextEditingController();

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
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  OtpTextField(
                    numberOfFields: 4,
                    borderColor: Color(0xFF512DA8),
                    //set to true to show as box or false to show as dash
                    showFieldAsBox: true,
                    //runs when a code is typed in
                    onCodeChanged: (String code) {
                    },
                    //runs when every textfield is filled
                    onSubmit: (String verificationCode) {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("Verification Code"),
                            );
                          });
                    }, // end onSubmit
                  ),
                ]),
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
                      buttontext: 'SUBMIT',
                      textcolor: Colors.black,
                      onTap: () {
                        otpsubmit();
                      },
                      bgcolor: Colors.amber)
                ],
              ),
              SizedBox(
                height: 10,
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
              //           MaterialPageRoute(builder: (context) => Home()),
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
            ]),
      ),
    );
  }

  void otpsubmit() {
    if (otp1.text.isEmpty ||
        otp2.text.isEmpty ||
        otp3.text.isEmpty ||
        otp4.text.isEmpty) {
      _myconfig.toast(msg: "Please Enter vaild otp");
      return;
    }
    if (otp1.text.length < 2 ||
        otp2.text.length < 2 ||
        otp4.text.length < 2 ||
        otp1.text.length < 2) {
      _myconfig.toast(msg: "Please Enter vaild otp");

      return;
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Home()),
      );
    }
  }
}
