import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
//import 'package:google_maps_flutter/google_maps_flutter.dart';

class Map extends StatefulWidget {
  const Map({Key? key}) : super(key: key);

  @override
  State<Map> createState() => _MapState();
}

class _MapState extends State<Map> {
  // static const _initialCameraPosition = CameraPosition(
  //     target: LatLng(-22.255351, -45.699630),
  //     zoom: 11.5
  // );
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: GoogleMap(
      //   myLocationButtonEnabled: false,
      //   zoomControlsEnabled: false,
      //   initialCameraPosition: _initialCameraPosition,
      // ),
    );
  }
}
