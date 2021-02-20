import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:lynk/cancel_trip.dart';
import 'package:lynk/payment.dart';
import 'about_us.dart';
import 'lynk rates.dart';
import 'lynk_money.dart';
import 'my_trip.dart';
//import 'package:google_maps_flutter/google_maps_flutter.dart';

class BookATrip extends StatefulWidget {
  @override
  _BookATripState createState() => _BookATripState();
}

class _BookATripState extends State<BookATrip> {

  List<Map<String, String>> List1 = [
    {"time": "25 min", "name": "Bike"},
    {"time": "30 min", "name": "Bus"},
    {"time": "15 min", "name": "Car"},
    {"time": "5 min", "name": "Tata ace"},
    {"time": "10 min", "name": "Scootetr"},
  ];

  @override
  // void initState() {
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Padding(
          padding: const EdgeInsets.only(left: 50.0),
          child: Text(
            "BOOK A TRIP",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w300,
                fontSize: 23.0),
          ),
        ),
        iconTheme: IconThemeData(color: Colors.yellow),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Admin"),
              accountEmail: Text("admin@gmail.com"),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon((Icons.person)),
                ),
              ),
              decoration: new BoxDecoration(
                color: Colors.yellow.shade800,
              ),
            ),
            ListTile(
              leading: Image(
                image: AssetImage('asset/icon/booktrip.png'),
                height: 50.0,
              ),
              title: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  " Book a Trip",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w300),
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new BookATrip()));
              },
            ),
            Divider(),
            ListTile(
              leading: Image(
                image: AssetImage('asset/icon/mytrip.webp'),
                height: 40.0,
              ),
              title: Padding(
                padding: const EdgeInsets.only(left: 26.0),
                child: Text(
                  "My Trips",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w300),
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new MyTrip()));
              },
            ),
            Divider(),
            ListTile(
              leading: Image(
                image: AssetImage('asset/icon/lynnkmart.webp'),
                height: 40.0,
              ),
              title: Padding(
                padding: const EdgeInsets.only(left: 23.0),
                child: Text(
                  " Lynk Money",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w300),
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new LynkMoney()));
              },
            ),
            Divider(),
            ListTile(
              leading: Image(
                image: AssetImage('asset/icon/rating.webp'),
                height: 40.0,
              ),
              title: Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Text(
                  "Lynk Rates",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w300),
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new LynkRates()));
              },
            ),
            Divider(),
            ListTile(
              leading: Image(
                image: AssetImage('asset/icon/about_us-256.webp'),
                height: 50.0,
              ),
              title: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  "About Us",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w300),
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new AboutUs()));
              },
            ),
            Divider(),
            ListTile(
              leading: Image(
                image: AssetImage('asset/icon/log_out.webp'),
                height: 40.0,
              ),
              title: Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Text(
                  "Logout",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w300),
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new CancelTrip()));
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            width: 500.0,
            height: 230.0,
            color: Colors.grey.shade200,
            child:
           Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Padding(
                  padding:
                      const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                  child: Row(
                    children: [
                      DotsIndicator(
                        dotsCount: 1,
                        decorator: DotsDecorator(
                          color: Colors.green,
                          activeColor: Colors.green,
                        ),
                      ),
                      Text("PickUp")
                    ],
                  ),
              ),
                     Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child:
                       TextField(
                      decoration: InputDecoration(),

                     ),
                   ),
                  Padding(
                  padding:
                      const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                  child: Row(
                    children: [
                      DotsIndicator(
                        dotsCount: 1,
                        decorator: DotsDecorator(
                          color: Colors.red,
                          activeColor: Colors.red,
                        ),
                      ),
                      Text("Drop Location")
                    ],
                  )),
                   Padding(
                       padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: TextField(
                      decoration: InputDecoration(),
                    ),
              ),
                    Padding(
                      padding: const EdgeInsets.only(left: 170.0, right: 30.0),
                         child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                               Text(
                                    "Add Point",
                                      style: TextStyle(
                                      fontSize: 25.0, color: Colors.green.shade400),
                            ),
                              IconButton(
                                  icon: Icon(Icons.add_circle_outline_sharp,
                                  size: 40.0, color: Colors.green),
                                  onPressed: () {},
                               ),
                              ],
                          ),
                    )
            ]   ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Container(
              height: 50.0,
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.yellow.shade600),
                  borderRadius: BorderRadius.circular(8.0)),
              child: Row(
                children: [
                  // Expanded(flex: 1,child:Text("OPEN"),),
                  Expanded(
                    child: Container(
                      /* Hello world*/
                      alignment: Alignment.center,
                      child: Text("OPEN"),
                      color: Colors.white,
                      height: 50.0,
                    ),
                  ),
                  Expanded(
                    child: Container( alignment: Alignment.center,
                      child: Text("CLOSE"),
                      color: Colors.yellow,
                      height: 50.0,
                    ),
                  ),
                  Expanded(
                    child: Container( alignment: Alignment.center,
                      child:  Text("ANY"),
                      color: Colors.white,
                      height: 50.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 200,
            alignment: Alignment.center,
            child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        EdgeInsets.only(left: index == 0 ? 10 : 0, right: 10),
                    child: InkWell(
                      onTap: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(List1[index]["time"]),
                          SizedBox(height: 15),
                          Container(
                            // color: Colors.grey.shade200,
                            height: 90.0,
                            width: 90.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.0),
                              color: Colors.grey.shade400,
                            ),
                            child: Icon(Icons.car_rental, size: 50.0),
                          ),
                          SizedBox(height: 15),
                          Text(List1[index]["name"]),
                        ],
                      ),
                    ),
                  );
                },
                itemCount: List1.length,
                scrollDirection: Axis.horizontal),
          ),
          Divider(),
          Container(
            height: 50.0,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Image(
                    image: AssetImage('asset/icon/mytrip.webp'),
                    height: 30.0,
                    width: 50.0,
                  ),
                ),
                Expanded(
                    child: Text(
                      "Try Our Packages",
                      style: TextStyle(fontSize: 15.0),
                    )),
                Padding(
                  padding:  const EdgeInsets.symmetric(horizontal: 10),
                  child: FlatButton(
                    onPressed: () {},
                    minWidth: 120.0,
                    child: Text(
                      "Add",
                      style: TextStyle(
                          color: Colors.yellow.shade600, fontSize: 20.0),
                    ),
                    shape: Border.all(color: Colors.yellow),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Divider(),
          Container(
            height: 100.0,
            color: Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Icon(Icons.monetization_on),
                        SizedBox(height: 20.0),
                        Text("Select Goods Type"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: VerticalDivider(color: Colors.black,),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Icon(Icons.monetization_on),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text("Paytm"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 100.0,
            child: Center(
              child:Column(
                children: [
                  SizedBox(height: 10.0,),
                  Text("₹ 5",style: TextStyle(color: Colors.green,fontSize: 18.0), ),
                  Container(height: 30.0,width: 30.0,color: Colors.orange.shade300,child: Icon(Icons.local_offer,color: Colors.white,size: 20.0,)),
                  Text("Insurance",style: TextStyle(fontSize: 18.0),),
                ],
              ) ,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0,right: 10.0),
            child: Container(
              height: 170.0,
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Icon(Icons.money,color: Colors.green,),
                              SizedBox(
                                height: 20.0,
                              ),
                              Text("GET ESTIMATE",style: TextStyle(color: Colors.white),),
                            ],
                          ),
                        ),
                        VerticalDivider(color: Colors.white,),
                        Expanded(
                          child: Column(
                            children: [
                              Icon(Icons.local_offer,color: Colors.red,),
                              SizedBox(
                                height: 20.0,
                              ),
                              Text("APPLY COUPON",style: TextStyle(color: Colors.white),),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0,left: 20.0,right: 20.0),
                      child: GestureDetector(onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => new Payment()));
                      },
                        child: Container(
                          alignment: Alignment.center,
                          height: 45.0,
                          color: Colors.yellow.shade700,
                          child: Text("BOOK NOW",style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold),),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),]
        ),
      ),
    );
  }
}
