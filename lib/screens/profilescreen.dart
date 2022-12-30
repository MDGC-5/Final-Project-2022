/* THIS IS BLANK FILE FOR FUTURE USE*/

import 'package:flutter/material.dart';
import 'package:flutterforbeginners2/utils/defaults.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  MyConfig _myconfig = MyConfig();

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
            "Profile",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(8),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/profilepic.png"),
                  radius: 50.0,
                ),
                SizedBox(height: 10),
                Divider(),
                ListTile(
                  leading: Icon(
                    Icons.person,
                    color: _myconfig.myButtonbackgroundColor,
                  ),
                  title: Text("My Account"),
                  onTap: () {},
                  subtitle: Text(
                    "Edit personal info",
                    style: TextStyle(fontSize: 12),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.black),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.chat_bubble,
                      color: _myconfig.myButtonbackgroundColor),
                  title: Text("Support"),
                  onTap: () {},
                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.black),
                  subtitle: Text(
                    "Talk to Us",
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.payment,
                      color: _myconfig.myButtonbackgroundColor),
                  title: Text("Payment"),
                  onTap: () {},
                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.black),
                  subtitle: Text(
                    "Manage Your Payment Methods",
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.settings,
                      color: _myconfig.myButtonbackgroundColor),
                  title: Text("Settings"),
                  onTap: () {},
                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.black),
                  subtitle: Text(
                    "Terms & Conditions, Privacy, Licenses",
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.logout,
                      color: _myconfig.myButtonbackgroundColor),
                  title: Text("Logout"),
                  onTap: () async {
                    Navigator.pushReplacementNamed(context, '/');
                  },
                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.black),
                ),
                Divider(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
