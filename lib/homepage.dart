import 'package:flutter/material.dart';
import 'package:lynk/UI/book_a_trip.dart';
import 'package:lynk/UI/lynk%20rates.dart';
import 'package:lynk/UI/lynk_money.dart';
import 'package:lynk/UI/my_trip.dart';

import 'UI/about_us.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.black,
        title: Text("BOOK A TRIP",style: TextStyle(color: Colors.white),),
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
              onTap: (){},
              title: Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image(image: AssetImage('asset/icon/booktrip.png'),height: 40.0,),
                    SizedBox(width: 20.0,),
                    Text("Book a Trip",style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.w300),),
                  ],
                ),
              ),
            ),
            ListTile(
              onTap: (){},
              title: Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image(image: AssetImage('asset/icon/mytrip.webp'),height: 40.0,),
                    SizedBox(width: 20.0,),
                    Text("My Trips",style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.w300),),
                  ],
                ),
              ),
            ),
            ListTile(
              onTap: (){},
              title: Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image(image: AssetImage('asset/icon/lynnkmart.webp'),height: 40.0,),
                    SizedBox(width: 20.0,),
                    Text("Lynk Money",style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.w300),),
                  ],
                ),
              ),
            ),
            ListTile(
              onTap: (){},
              title: Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image(image: AssetImage('asset/icon/rating.webp'),height: 40.0,),
                    SizedBox(width: 20.0,),
                    Text("Lynk Rates",style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.w300),),
                  ],
                ),
              ),
            ),
            ListTile(
              onTap: (){},
              title: Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image(image: AssetImage('asset/icon/about_us-256.webp'),height: 40.0,),
                    SizedBox(width: 20.0,),
                    Text("About Us",style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.w300),),
                  ],
                ),
              ),
            ),
            ListTile(
              onTap: (){},
              title: Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image(image: AssetImage('asset/icon/log_out.webp'),height: 40.0,),
                    SizedBox(width: 20.0,),
                    Text("Logout",style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.w300),),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

