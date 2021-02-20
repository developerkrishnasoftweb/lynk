
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
//import 'package:location_permissions/location_permissions.dart';

class GMap extends StatefulWidget {
  @override
  _GMapState createState() => _GMapState();
}

class _GMapState extends State<GMap> {
  Completer<GoogleMapController> mapController = Completer();
  static const LatLng _center = const LatLng(21.143622, 72.815435);
  final Set<Marker> _markers = {};
  LatLng lastMapPosition = _center;
  MapType mapType = MapType.satellite;
  _onMapCreated(GoogleMapController controller) {
    mapController.complete(controller);
  }
  _cameraMove (CameraPosition position) {
    lastMapPosition = position.target;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // getLocationPermission();
  }

  // getLocationPermission() async {
  //   LocationPermissions().openAppSettings().then((bool hasOpened) =>
  //       debugPrint('App Settings opened: ' + hasOpened.toString()));
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Google Map"),),
      body:GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 11.0,
        ),
        mapType: mapType,
        markers: _markers,
        onCameraMove: _cameraMove,
        zoomGesturesEnabled: true,
      ),
      
    );
  }
}
/* class GMap extends StatefulWidget {
  @override
  _GMapState createState() => _GMapState();
}

class _GMapState extends State<GMap> {
  GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Maps Sample App'),
        backgroundColor: Colors.green[700],
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 11.0,
        ),
      ),
    );
  }
}
*/