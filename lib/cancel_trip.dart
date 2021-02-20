import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

enum FavoriteMethod { r1, r2, r3, r4,r6,r7,r8,r9,r10 }

class CancelTrip extends StatefulWidget {
  @override
  _CancelTripState createState() => _CancelTripState();
}

class _CancelTripState extends State<CancelTrip> {
  FavoriteMethod _method = FavoriteMethod.r1;
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
      appBar: AppBar(backgroundColor: Colors.black,
        leading: Icon(Icons.arrow_forward_ios),title:Text("LY258963 - Cancel Trip",
          style: TextStyle(color: Colors.white,fontSize: 20.0),),),
      body:SingleChildScrollView(
        child:Column(
          children: <Widget>[
            Container(
              height: 150.0,width: 500.0,
              child: Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Column(
                  children: [
                    Icon(Icons.person,size: 100.0),
                    Text("WHY ARE YOU CANCELLING ??",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),)
                  ],
                ),
              ),
              color: Colors.grey.shade200,
            ),
            ListTile(
              title: const Text('I AM CHECKING OUT THE APP',style: TextStyle(fontSize: 13.0),),
              leading: Radio<FavoriteMethod>(
                value: FavoriteMethod.r1,
                groupValue: _method,
                onChanged: (value) {
                  setState(() {
                    _method = value;
                  });
                },
              ),
            ),
            ListTile(onTap: (){},
              title: const Text('I DONT NEED A VEHICLE ANYMORE',style: TextStyle(fontSize: 13.0),),
              leading: Radio<FavoriteMethod>(
                value: FavoriteMethod.r2,
                groupValue: _method,
                onChanged: (value) {
                  setState(() {
                    _method = value;
                  });
                },
              ),

            ),
            ListTile(
              title: const Text('VEHICLE INCOMPATIBLE WITH MY GOODS',style: TextStyle(fontSize: 13.0),),
              leading: Radio<FavoriteMethod>(
                value: FavoriteMethod.r3,
                groupValue: _method,
                onChanged: (value) {
                  setState(() {
                    _method = value;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('MY DRIVER REFUSED/ASKED ME TO CANCEL',style: TextStyle(fontSize: 13.0),),
              leading: Radio<FavoriteMethod>(
                value: FavoriteMethod.r4,
                groupValue: _method,
                onChanged: (value) {
                  setState(() {
                    _method = value;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('I AM UNABLE TO CONTACT MY DRIVER',style: TextStyle(fontSize: 13.0),),
              leading: Radio<FavoriteMethod>(
                value: FavoriteMethod.r6,
                groupValue: _method,
                onChanged: (value) {
                  setState(() {
                    _method = value;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('MY GOODS ARE NOT READY',style: TextStyle(fontSize: 13.0),),
              leading: Radio<FavoriteMethod>(
                value: FavoriteMethod.r7,
                groupValue: _method,
                onChanged: (value) {
                  setState(() {
                    _method = value;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('MY DRIVER SAID HE WILL BE LATE',style: TextStyle(fontSize: 13.0),),
              leading: Radio<FavoriteMethod>(
                value: FavoriteMethod.r8,
                groupValue: _method,
                onChanged: (value) {
                  setState(() {
                    _method = value;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('I EXPECTED A SHORTER ARRIVAL TIME',style: TextStyle(fontSize: 13.0),),
              leading: Radio<FavoriteMethod>(
                value: FavoriteMethod.r9,
                groupValue: _method,
                onChanged: (value) {
                  setState(() {
                    _method = value;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('DRIVER DETAILS NOT RECEIVED',style: TextStyle(fontSize: 13.0),),
              leading: Radio<FavoriteMethod>(
                value: FavoriteMethod.r10,
                groupValue: _method,
                onChanged: (value) {
                  setState(() {
                    _method = value;
                  });
                },
              ),
            ),
            MaterialButton(
              height: 50,minWidth: 300.0,
              color: Colors.yellow.shade700,
              child: Text("CANCEL TRIP",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.white),),
              onPressed: (){

                showModalBottomSheet(
                  context: context,
                  backgroundColor: Colors.grey.shade300,
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  builder: (BuildContext context) {


                    return Container(
                      height: 500,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Center(child: RichText(
                                  text: TextSpan(
                                    children: <TextSpan>[
                                      TextSpan(text: 'Your fare has been updated from\t',style: TextStyle(color: Colors.black)),
                                      TextSpan(text: '₹514\t', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),
                                      TextSpan(text:'to\t',style: TextStyle(color: Colors.black) ),
                                      TextSpan(text: '₹664', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),
                                    ],
                                  ),
                                )
                                ),
                                  height: 40.0,//color: Colors.yellow.shade600,

                                decoration: BoxDecoration(

                                  borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20.0),
                                  bottomLeft: Radius.elliptical(50.0, 50.0),
                                  topRight: Radius.circular(20.0),
                                  bottomRight: Radius.elliptical(50.0, 50.0)

                                  ),
                                  color: Colors.yellow.shade600,
                                ),
                                ),

                              Padding(
                                padding: const EdgeInsets.only(top: 10.0,right: 130.0,left: 20.0),
                                child: RichText(text: TextSpan(
                                    children: <TextSpan>[
                                      TextSpan(text: 'Helper Support\t',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20.0)),
                                      TextSpan(text: 'guide', style: TextStyle(color: Colors.black,fontSize:20.0)),
                                    ]
                                )),
                              ),
                              Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                                Padding(
                                  padding:
                                  const EdgeInsets.only(top: 20.0,left: 20.0),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      //crossAxisAlignment: CrossAxisAlignment.end,
                                      //mainAxisAlignment: MainAxisAlignment.end,

                                      children: [
                                        DotsIndicator(
                                          dotsCount: 1,
                                          decorator: DotsDecorator(
                                            color: Colors.green,
                                            activeColor: Colors.black,
                                          ),
                                        ),
                                        Text("Driver Will Work as helper , no extra person Will accompany."),

                                      ],
                                    ),
                                  ),
                                ),

                                Padding(
                                    padding:
                                    const EdgeInsets.only(top: 20.0,left: 20.0),
                                    child: Row(
                                      children: [
                                        DotsIndicator(
                                          dotsCount: 1,
                                          decorator: DotsDecorator(
                                            color: Colors.red,
                                            activeColor: Colors.black,
                                          ),
                                        ),
                                        Text("Driver Will help but Won't do the entire unloading.")
                                      ],
                                    )),
                                Padding(
                                    padding:
                                    const EdgeInsets.only(top: 20.0,left: 20.0),
                                    child: Row(
                                      children: [
                                        DotsIndicator(
                                          dotsCount: 1,
                                          decorator: DotsDecorator(
                                            color: Colors.red,
                                            activeColor: Colors.black,
                                          ),
                                        ),
                                        Text("Help Will be limited to groound floor unloading.")
                                      ],
                                    )),
                                Padding(
                                    padding:
                                    const EdgeInsets.only(top: 20.0,left: 20.0),
                                    child: Row(
                                      children: [
                                        DotsIndicator(
                                          dotsCount: 1,
                                          decorator: DotsDecorator(
                                            color: Colors.red,
                                            activeColor: Colors.black,
                                          ),
                                        ),
                                        Text("Driver Will unload till a distance of ~25m.")
                                      ],
                                    )),
                                SizedBox(height: 5.0),
                                Divider(color: Colors.black,),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0,left: 10.0,right: 10.0),
                                  child: Row(

                                    children: [
                                      Checkbox(
                                          value: rememberMe,
                                          onChanged: _onRememberMeChanged
                                      ),
                                      Text("I have read and understood the guide"),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 5.0,),
                                MaterialButton(onPressed: (){},
                                  height: 40.0,
                                  minWidth: 320.0,color: Colors.grey.shade400,
                                  child: Text("Proceed",style: TextStyle(color: Colors.white),),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ]   ),
                            ],
                          ),

                        ],
                      ),
                    );
                  },);
              },
            ),
          ],
        ),
        /* Column(
            children: [
              Container(
                height: 150.0,
                width: 500.0,
                color: Colors.grey.shade200,
                child: Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Column(
                    children: [
                      Icon(Icons.person,size: 80.0,),
                      Text("WHY YOU ARE CANCELLING ??",style: TextStyle(fontSize: 20.0),),
                    ],
                  ),
                ),
              ),
              RadioListTile(
                      groupValue: selected,
                      title: Text('I AM CHECKING OUT THE APP',style: TextStyle(fontSize: 15.0),),
                      value: selected,
                      onChanged: (val) {
                        setState(() {
                          selected = val;
                        }
                        );
                      },

                    ),
                    RadioListTile(
                      groupValue: selected,
                      title: Text('I DONT NEED A VEHICLE ANYMORE',style: TextStyle(fontSize: 15.0),),
                      value: 'Item 1',
                      onChanged: (val) {
                        setState(() {
                          selected = val;
                        });
                      },
                    ),
                    RadioListTile(
                      groupValue: selected,
                      title: Text('VEHICLE INCOMPATIBLE WITH MY GOODS',style: TextStyle(fontSize: 15.0),),
                      value: 'Item 1',
                      onChanged: (val) {
                        setState(() {
                          selected = val;
                        });
                      },
                    ),
                    RadioListTile(
                      groupValue: selected,
                      title: Text('MY DRIVER REFUSED / ASKED ME TO CANCEL',style: TextStyle(fontSize: 15.0),),
                      value: 'Item 1',
                      onChanged: (val) {
                        setState(() {
                          selected = val;
                        });
                      },
                    ),
                    RadioListTile(
                      groupValue: selected,
                      title: Text('I AM UNABLE TO CONTACT MY DRIVER',style: TextStyle(fontSize: 15.0),),
                      value: 'Item 1',
                      onChanged: (val) {
                        setState(() {
                          selected = val;
                        });
                      },
                    ),
                    RadioListTile(
                      groupValue: selected,
                      title: Text('MY GOODS ARE NOT READY',style: TextStyle(fontSize: 15.0),),
                      value: 'Item 1',
                      onChanged: (val) {
                        setState(() {
                          selected = val;
                        });
                      },
                    ),
                    RadioListTile(
                      groupValue: selected,
                      title: Text('MY DRIVER SAID HE WILL BE LATE',style: TextStyle(fontSize: 15.0),),
                      value: 'Item 1',
                      onChanged: (val) {
                        setState(() {
                          selected = val;
                        });
                      },
                    ),
                    RadioListTile(
                      groupValue: selected,
                      title: Text('I EXPECTED A SHORTER ARRIVAL TIME',style: TextStyle(fontSize: 15.0),),
                      value: 'Item 1',
                      onChanged: (val) {
                        setState(() {
                          selected = val;
                        });
                      },
                    ),
                    RadioListTile(
                      groupValue: selected,
                      title: Text('DRIVER DETAILS NOT RECEIVED',style: TextStyle(fontSize: 15.0),),
                      value: 'Item 1',
                      onChanged: (val) {
                        setState(() {
                          selected = val;
                        });
                      },
                    ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                child: Container(
                  color: Colors.yellow.shade700,
                  height: 40.0,
                  width: 500.0,
                  child: Center(child: Text("CANCEL TRIP",style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold),),),
                ),
              ),
                  ],
                ),*/
              ),

    );
  }
}
