import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class AfterSelectionVehicle extends StatefulWidget {
  @override
  _AfterSelectionVehicleState createState() => _AfterSelectionVehicleState();
}

class _AfterSelectionVehicleState extends State<AfterSelectionVehicle> {
  //AfterSelectionVehicle({Key key, this.title}) : super(key: key);
  // final String title;
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
      body:Center(
        child: RaisedButton(
          child: const Text('showModalBottomSheet'),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              backgroundColor: Colors.grey.shade300,
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              builder: (BuildContext context) {
                return Container(
                  height: 400,

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                           Container(child: Center(child: RichText(
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
                             height: 30.0,color: Colors.yellow.shade600,
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
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                              SizedBox(height: 20.0),
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
                              SizedBox(height: 20.0,),

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
      ),
    );
  }
}

