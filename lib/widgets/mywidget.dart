import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutterforbeginners2/utils/defaults.dart';


MyConfig _myConfig = MyConfig();

class MyInputField extends StatefulWidget {
  // Custom Input Field
  final TextEditingController mycontroller;
  final String hinttext;
  final bool hidedata;
  final Icon myicon;
  final TextInputType keyboardtype;
  final validator;

  const MyInputField({
    required this.keyboardtype,
    required this.myicon,
    required this.mycontroller,
    required this.hidedata,
    required this.hinttext,
    this.validator,
    Key? key,
  }) : super(key: key);

  @override
  State<MyInputField> createState() => _MyInputFieldState();
}

class _MyInputFieldState extends State<MyInputField> {
  @override
  void initState() {
    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - _myConfig.myMargin * 4,
      // height: 50,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(_myConfig.myRadius * 1.5),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade400,
              blurRadius: 5,
              offset: Offset(0, 2), // Shadow position
            ),
          ],
        ),
        child: TextFormField(
          controller: widget.mycontroller,
          // validator: widget.validator,
          autofocus: false,
          keyboardType: widget.keyboardtype,
          style: TextStyle(
            color: Colors.black,
          ),
          obscureText: widget.hidedata,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 18.0),
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: widget.myicon,
            ),
            hintText: widget.hinttext,
            hintStyle: TextStyle(
              color: Colors.black,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(_myConfig.myRadius * 1.5),
              borderSide: BorderSide(width: 1, color: Colors.white),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(_myConfig.myRadius * 1.5),
              borderSide: BorderSide(width: 1, color: Colors.white),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(_myConfig.myRadius * 1.5),
              borderSide: BorderSide(width: 1, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

//Cutom Button Require Button Color, Text Color and On Tap Method
class MyButton extends StatelessWidget {
  final Color bgcolor;
  final Color textcolor;
  final double btnwidth;
  final Function onTap;
  final String buttontext;
  final double btntextsize;

  const MyButton({
    required this.btnwidth,
    required this.btntextsize,
    required this.buttontext,
    required this.textcolor,
    required this.onTap,
    required this.bgcolor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: btnwidth,
      height: 50,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(_myConfig.myRadius * 1))),
          backgroundColor: MaterialStateProperty.all(bgcolor),
        ),
        onPressed: () {
          onTap();
        },
        child: Text(
          buttontext,
          style: TextStyle(
            letterSpacing: 1.5,
            fontSize: btntextsize,
            color: textcolor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  final double height;
  final bool showFilterIcon;
  final bool showSearchIcon;
  final Function onTap;
  final String text;

  const SearchBar(
      {Key? key,
      required this.showSearchIcon,
      required this.text,
      required this.height,
      required this.showFilterIcon,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("tapped");
        onTap();
      },
      child: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        height: height,
        // color: Colors.green,
        child: Row(
          children: [
            SizedBox(width: _myConfig.myWidth),
            showSearchIcon
                ? Row(
                    children: [
                      Icon(Icons.search),
                      SizedBox(width: _myConfig.myWidth),
                    ],
                  )
                : Container(),
            Text(
              text,
              style: TextStyle(color: Color(0xFF6D6F71)),
            ),
            Spacer(), //Icon(Icons.filter_alt_outlined)
            showFilterIcon
                ? ImageIcon(AssetImage("assets/images/filter.png"))
                : Container(),
            SizedBox(width: _myConfig.myWidth),
          ],
        ),
        decoration: BoxDecoration(
            color: Color(0XFFEDF2F7), borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}

class TermCondition extends StatelessWidget {
  const TermCondition({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
          text: "by signing, you agree to our ",
          style: TextStyle(
            fontFamily: 'Inter',
            fontSize: _myConfig.mySmallFontSize,
          ),
          children: [
            TextSpan(
                text: 'Terms and Conditions.',
                style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: _myConfig.mySmallFontSize,
                    decoration: TextDecoration.underline,
                    color: _myConfig.myButtonbackgroundColor),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    // code to open / launch terms of service link here
                    Navigator.pushNamed(context, '/CMS');
                  }),
          ]),
    );
  }
}
