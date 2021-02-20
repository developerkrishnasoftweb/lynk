//'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:lynk/gmap.dart';
import 'package:lynk/homepage.dart';
import 'package:lynk/selection_vehicle.dart';

import 'UI/book_a_trip.dart';
//import 'homepage.dart';

void main() {
  runApp(DashBoard());
}
class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BookATrip(),
    );
  }
}

