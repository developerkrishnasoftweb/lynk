import 'package:flutter/material.dart';

import 'UI/about_us.dart';
import 'UI/book_a_trip.dart';
import 'UI/lynk rates.dart';
import 'UI/lynk_money.dart';
import 'UI/my_trip.dart';
class Payment extends StatefulWidget {

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  bool rememberMe = false;
  void _onRememberMeChanged(bool newValue) => setState(() {
    rememberMe = newValue;
    if (rememberMe) {
    } else {
    }
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Padding(
          padding: const EdgeInsets.only(left: 50.0),
          child: Text(
            "PAYMENT",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w300,
                fontSize: 23.0),
          ),
        ),
        iconTheme: IconThemeData(color: Colors.white),
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
              onTap: () {},
            ),
          ],
        ),
      ),
      body:  Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0,left: 10.0,right: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Bill Details",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                  Text("Apply Promo",style: TextStyle(color: Colors.green.shade600,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0,left: 10.0,right: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Your Fare",),
                  Text("\$ 18.052"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0,left: 10.0,right: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Promo Discount",),
                  Text("-\$ 18.052",style: TextStyle(color: Colors.red),),
                ],
              ),
            ),
            SizedBox(height: 10.0,),
            Divider(color: Colors.black,),
            Padding(
              padding: const EdgeInsets.only(top: 20.0,left: 10.0,right: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Grand Total",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
                  Text("\$ 18.052",style: TextStyle(fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0,left: 10.0,right: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Payable Amount",style: TextStyle(color: Colors.green,fontSize: 15.0,fontWeight: FontWeight.bold),),
                  Text("\$ 18.52",style: TextStyle(color: Colors.green,),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0,left: 10.0,right: 10.0),
              child: Row(

                children: [
                  Checkbox(
                    value: rememberMe,
                     onChanged: _onRememberMeChanged
                  ),
                  Text("Use Wallet Cash (Your balance is \$0.00)"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0,left: 10.0,right: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(
                    child: Text("Pay With Cash",style: TextStyle(color: Colors.white),),
                    color: Colors.black, height: 45.0,minWidth: 100.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: (){},

                  ),
                  MaterialButton(
                    child: Text("Pay With Card",style: TextStyle(color: Colors.white),),
                    color: Colors.lightBlue,
                    height: 45.0,minWidth: 100.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: (){},

                  ),
                ],
              ),
            ),
          ],
        ),

    );
  }
}
