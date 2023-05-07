

import 'package:burc_rehberi/burc_detay.dart';
import 'package:burc_rehberi/burclar_listesi.dart';
import 'package:burc_rehberi/models/burc.dart';
import 'package:flutter/material.dart';

class RouteGeneration {
  static Route<dynamic>? routeGenerator(RouteSettings settings){
    switch (settings.name){
      case '/':
      return MaterialPageRoute(builder:(context)=>BurcListesi(),
      );
      case '/burcDetay':
      final Burc secilen=settings.arguments as Burc;
      return MaterialPageRoute(builder:(context)=>BurcDetay(secilenBurc: secilen,),);
    }

  }
}