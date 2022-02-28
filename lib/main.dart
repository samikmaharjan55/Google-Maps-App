import 'package:flutter/material.dart';
import 'package:google_maps_app/google_map_page.dart';
import 'package:google_maps_app/provider/location_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => LocationProvider(),
          child: const GoogleMapPage(),
        ),
      ],
      child: const MaterialApp(
        title: 'Google Maps App',
        home: GoogleMapPage(),
      ),
    );
  }
}
