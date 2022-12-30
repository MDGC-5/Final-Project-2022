/* THIS IS BLANK FILE FOR FUTURE USE*/


import 'package:flutter/material.dart';
import 'package:flutterforbeginners2/utils/defaults.dart';

class OrderScreen extends StatefulWidget {
  OrderScreen({Key? key}) : super(key: key);

  @override
  _OrderScreenState createState() => _OrderScreenState();
}

Widget rowcrt (){
  return  Container(
    height: 60,
    child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Expanded(
                          flex: 5,
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 10, 40, 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("2022-12-12",style: TextStyle(
                                    fontWeight: FontWeight.bold,fontSize: 17
                                  ),),
                                  Text("INV - 20221252152"),
                                  
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Container(
                          height: 45,
                         decoration: BoxDecoration(
                         color: Color.fromARGB(255, 230, 230, 230),
                          borderRadius: BorderRadius.circular(12)
                         ),
                         child: Center(child: Text("\$7.54",style: TextStyle(
                          fontWeight: FontWeight.bold
                         ),)),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all (color: Colors.orangeAccent, width: 2),
                          borderRadius: BorderRadius.circular(10),
                          ),
                           child: Padding(
                             padding: const EdgeInsets.all(2.0),
                             child: Icon(Icons.shopping_basket_outlined,color: Colors.orangeAccent,size: 30,),
                           ),
                          ),
                        ),
                        
                       
                      
                
                  ],
        ),
              ),
            ),
  );
}

class _OrderScreenState extends State<OrderScreen> {
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
            "Orders",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Column(
        children: [
         rowcrt(),
         rowcrt(),
         rowcrt(),
         rowcrt(),
         rowcrt(),
         rowcrt(),
      ],
      ),
      
      );
      
            
          
  }
}
