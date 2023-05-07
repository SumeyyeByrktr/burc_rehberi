import 'package:burc_rehberi/route_generator.dart';
import 'package:flutter/material.dart';
import 'package:burc_rehberi/burclar_listesi.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      theme: ThemeData(
        primarySwatch: Colors.pink
      ),
      onGenerateRoute:RouteGeneration.routeGenerator
    );
  }
}

