/* THIS IS BLANK FILE FOR FUTURE USE*/


import 'package:flutter/material.dart';
import 'package:flutterforbeginners2/utils/defaults.dart';

class WishListScreen extends StatefulWidget {
  WishListScreen({Key? key}) : super(key: key);

  @override
  _WishListScreenState createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
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
          onTap: () {},
          child: Image.asset(
            "assets/images/back.png",
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Text(
            "Wishlist",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 233, 232, 232),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(17.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("1 result"),
                    Container(child: Icon(Icons.short_text))
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Card(
              elevation: 5,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      child: Image.asset(
                        "assets/images/catagory2.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 0, 010),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "TAj mahal",
                              style: TextStyle(
                                color: Colors.amber,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text("tajmahal"),
                            Text("7.00"),
                            Text("10.00  save 3.00%")
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
