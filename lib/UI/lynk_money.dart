import 'package:flutter/material.dart';

import '../cancel_trip.dart';
import 'about_us.dart';
import 'book_a_trip.dart';
import 'lynk rates.dart';
import 'my_trip.dart';
class LynkMoney extends StatefulWidget {
  @override
  _LynkMoneyState createState() => _LynkMoneyState();
}

class _LynkMoneyState extends State<LynkMoney> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.black,
        title: Text("LYNK MONEY",style: TextStyle(color: Colors.white),),
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
    );
  }
}
