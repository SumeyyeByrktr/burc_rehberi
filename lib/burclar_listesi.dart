import 'package:burc_rehberi/burc_item.dart';
import 'package:burc_rehberi/data/strings.dart';
import 'package:burc_rehberi/models/burc.dart';
import 'package:flutter/material.dart';

class BurcListesi extends StatelessWidget {
  late List<Burc> tumBurclar;
  BurcListesi(){
  tumBurclar=veriKaynaginiHazirla();
  print(tumBurclar);
}

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Burçlar Listesi"),),
      body: Center(
        child:ListView.builder(
          itemBuilder: (context,index){return BurcItem(listelenecekBurc: tumBurclar[index],

          );} ,
          itemCount: tumBurclar.length, 
          ) ,
        
      ),
      );
  }

  List<Burc> veriKaynaginiHazirla() {
    List<Burc> gecici=[];
    for (var i = 0; i < 12; i++) {
      var burcAdi=Strings.BURC_ADLARI[i];
      var burcTarih=Strings.BURC_TARIHLERI[i];
      var burcDetay=Strings.BURC_GENEL_OZELLIKLERI[i];
      //koc1.png yazdırmak için 
      var burcKucukResim=Strings.BURC_ADLARI[i].toLowerCase()+"${i+1}.png";
      //koc_buyuk1.png yazdırmak için
      var burcBuyukResim=Strings.BURC_ADLARI[i].toLowerCase()+"_buyuk${i+1}.png";
      Burc eklenecekBurc=Burc(burcAdi,burcTarih,burcDetay,burcKucukResim,burcBuyukResim);
      gecici.add(eklenecekBurc);

    }
    return gecici;
  }
}