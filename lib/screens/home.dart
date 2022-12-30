import 'package:flutter/material.dart';
import 'package:flutterforbeginners2/screens/registerscreen.dart';
import 'package:flutterforbeginners2/screens/slider.dart';
import 'package:flutterforbeginners2/utils/defaults.dart';

final List<String> imgList = [
  "assets/images/samosu.png",
];

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

TextEditingController search = TextEditingController();

class _HomeScreenState extends State<HomeScreen> {
  MyConfig _myconfig = MyConfig();

  @override
  void initState() {
    super.initState();
  }

  Widget cont(String A, String B, String C, String D, String E, String F) {
    return Row(
      children: [
        Column(
          children: [
            SizedBox(
              child: Card(
                child: SizedBox(
                  height: 146,
                  width: 146,
                  child: Image(
                    image: AssetImage("$A"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Text(
              "$B",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              "$C",
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.w100),
            ),
          ],
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          children: [
            Card(
              child: SizedBox(
                child: Image(
                  height: 146,
                  width: 146,
                  image: AssetImage("$D"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Text(
              "$E",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              "$F",
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.w100),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leadingWidth: 80,
          elevation: _myconfig.myElevation,
          leading: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => RegisterScreen())));
            },
            child: Image.asset(
              "assets/images/karmalogo.png",
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Center(
              child: Text(
                "Karma launge",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          actions: [
            Icon(
              Icons.arrow_drop_down_circle_rounded,
              color: Colors.black,
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextField(
                  controller: search,
                  decoration: InputDecoration(
                      label: Text(
                        "Search Product",
                      ),
                      prefixIcon: Icon(Icons.search),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50))),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  child: myslider(),),
                // CarouselSlider(
                //   options: CarouselOptions(autoPlay: true),
                //   items: imgList
                //       .map((item) => Center(
                //               child: Image(
                //             image: AssetImage(item),
                //             fit: BoxFit.cover,
                //             width: double.infinity,
                //           )))
                //       .toList(),
                // )),
                //
                cont(
                    "assets/images/catagory 1.gif",
                    "On Sale!",
                    "On Sale!",
                    "assets/images/catagory2.png",
                    "Starter",
                    "Samosa, Panner, Pakora..."),
                cont(
                    "assets/images/catagory 3.png",
                    "BEverages",
                    "Lassi, Tea,Ice Tea",
                    "assets/images/catagory 4.png",
                    "Wine",
                    "Wine"),
                cont("assets/images/catagory 5.png", "On Sale!", "On Sale!",
                    "assets/images/catagory 6.png", "Starter", "Samosa")
              ]
            ),
          ),
        ));
  }
}
