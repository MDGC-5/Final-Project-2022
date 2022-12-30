import 'package:flutter/material.dart';
import 'package:flutterforbeginners2/screens/loginscreen.dart';
import 'package:flutterforbeginners2/screens/navbar.dart';
import 'package:flutterforbeginners2/utils/defaults.dart';
import 'package:flutterforbeginners2/widgets/mywidget.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  MyConfig _myconfig = MyConfig();

  @override
  void initState() {
    super.initState();
  }

  TextEditingController nameControler = TextEditingController();
  TextEditingController emailControler = TextEditingController();
  TextEditingController cellphoneControler = TextEditingController();
  TextEditingController passControler = TextEditingController();
  TextEditingController addressControler = TextEditingController();
  TextEditingController zipcodeControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Form(
          child: Column(
            children: [
              SizedBox(
                height: 150,
                child: Container(
                    child: Image.asset(
                  'assets/images/registerbg.png',
                  width: 1000,
                )),
              ),
              SizedBox(
                height: _myconfig.myHeight,
              ),
              MyInputField(
                  keyboardtype: TextInputType.text,
                  hinttext: "Full Name",
                  hidedata: false,
                  mycontroller: nameControler,
                  myicon: Icon(
                    Icons.person,
                    color: _myconfig.myButtonbackgroundColor,
                    size: _myconfig.myIconSize,
                  )), // Full Name
              SizedBox(
                height: _myconfig.myHeight,
              ),
              MyInputField(
                  keyboardtype: TextInputType.emailAddress,
                  hinttext: "Email",
                  hidedata: false,
                  mycontroller: emailControler,
                  myicon: Icon(
                    Icons.email_outlined,
                    color: _myconfig.myButtonbackgroundColor,
                    size: _myconfig.myIconSize,
                  )), // Email Id
              SizedBox(
                height: _myconfig.myHeight,
              ),
              MyInputField(
                  keyboardtype: TextInputType.number,
                  hinttext: "Cell Number",
                  hidedata: false,
                  mycontroller: cellphoneControler,
                  myicon: Icon(
                    Icons.phone_in_talk_rounded,
                    color: _myconfig.myButtonbackgroundColor,
                    size: _myconfig.myIconSize,
                  )),
              SizedBox(
                height: _myconfig.myHeight,
              ),
              SizedBox(
                height: _myconfig.myHeight,
              ),
              MyInputField(
                  keyboardtype: TextInputType.streetAddress,
                  hinttext: "Address",
                  // validator: (value) {
                  //   _myconfig.requiredValidator(
                  //       value: value, msg: "Address is Required");
                  // },
                  hidedata: false,
                  mycontroller: addressControler,
                  myicon: Icon(
                    Icons.location_on,
                    color: _myconfig.myButtonbackgroundColor,
                    size: _myconfig.myIconSize,
                  )),
              SizedBox(
                height: _myconfig.myHeight,
              ),
              MyInputField(
                  keyboardtype: TextInputType.number,
                  hinttext: "Zip Code",
                  // validator: (value) {
                  //   _myconfig.zipValidator(value: value);
                  // },
                  hidedata: false,
                  mycontroller: zipcodeControler,
                  myicon: Icon(
                    Icons.map_outlined,
                    color: _myconfig.myButtonbackgroundColor,
                    size: _myconfig.myIconSize,
                  )),

              SizedBox(
                height: _myconfig.myHeight,
              ),
              MyButton(
                btnwidth:
                    MediaQuery.of(context).size.width - _myconfig.myMargin * 4,
                bgcolor: _myconfig.myButtonbackgroundColor,
                btntextsize: 20,
                buttontext: "SIGN UP",
                textcolor: _myconfig.myButtonTextColor,
                onTap: () async {
                  _submit();
                },
              ),
              SizedBox(
                height: _myconfig.myHeight,
              ),
              TermCondition(),
              SizedBox(
                height: _myconfig.myHeight*0.8,
              ),
              Container(
                margin: EdgeInsets.only(right: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "SIGN IN",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(
                      width: _myconfig.myWidth,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 10,
                              offset: Offset(0, 2), // Shadow position
                            ),
                          ],
                        ),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.arrow_forward,
                            size: _myconfig.myIconSize,
                            color: Colors.black,
                          ),
                          // child: Image.asset(
                          //   "assets/images/forwordicon.png",
                          //   width: 20,
                          // ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }

  void _submit() async {
    // final isValid = _formKey.currentState!.validate();
    // if (!isValid) {
    //   return;
    // } else {
    if (nameControler.text.isEmpty) {
      //print(nameControler.toString());
      _myconfig.toast(msg: "Please Enter Full Name");
      return;
    }

    if (!_myconfig.nameValidator(value: nameControler.text)) {
      _myconfig.toast(msg: "Please Enter Full Name");
      return;
    }

    if (emailControler.text.isEmpty) {
      _myconfig.toast(msg: "Please Enter Email");
      return;
    }

    if (!_myconfig.emailValidator(value: emailControler.text)) {
      _myconfig.toast(msg: "Please Enter Valid Email");
      return;
    }

    if (cellphoneControler.text.isEmpty) {
      _myconfig.toast(msg: "Please Enter Cell Phone");
      return;
    }
    if (addressControler.text.isEmpty) {
      _myconfig.toast(msg: "Please Enter Address");
      return;
    }
    if (zipcodeControler.text.isEmpty) {
      _myconfig.toast(msg: "Please Enter Zip Code");
      return;
    }
    else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Home()),
      );
    }
    
  }
}
