import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Google_maps extends StatefulWidget {
  const Google_maps({super.key});

  @override
  State<Google_maps> createState() => _Google_mapsState();
}

class _Google_mapsState extends State<Google_maps> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
         home: Scaffold(
          body: GoogleMap(initialCameraPosition: _kGooglePlex,
          myLocationEnabled: true,
          onMapCreated: (controller) {
            _controller.complete(controller);
          },
        ),
         ),
    );
  }
}