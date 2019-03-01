import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CustomGoogleMap extends StatefulWidget {
  final Widget child;

  CustomGoogleMap({Key key, this.child}) : super(key: key);

  _CustomGoogleMapState createState() => _CustomGoogleMapState();
}

class _CustomGoogleMapState extends State<CustomGoogleMap> {
  GoogleMapController mapController;

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: _buildCameraPosition(),
        ),
      ),
    );
  }
}

CameraPosition _buildCameraPosition() {
  final LatLng _center = const LatLng(36.7378, -119.7871);
  return CameraPosition(
    target: _center,
    //tilt: 45.0,
    zoom: 5.0,
    //bearing: 55,
  );
}
