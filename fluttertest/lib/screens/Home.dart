import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _initialCameraPosition = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 15,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Maps"),
        centerTitle: true,
      ),
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: _initialCameraPosition,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        // markers: _markers,
        }
      ),
    );
  }
}

// Set<Marker> _markers = {};

// void _onMapCreated (GoogleMapController controller) {
//   setState(() {
//     _markers.add(
//       Marker(
//         markerId: MarkerId("id-1"),
//         position: LatLng(37.42796133580664, -122.085749655962),
//         infoWindow: InfoWindow(
//           title: "Information precise"
//         )
//       )
//     );
//   });
// }
