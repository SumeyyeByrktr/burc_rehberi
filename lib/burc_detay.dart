import 'package:flutter/material.dart';
import 'models/burc.dart';
import 'package:palette_generator/palette_generator.dart';

class BurcDetay extends StatefulWidget {
  final Burc secilenBurc;
  const BurcDetay({required this.secilenBurc, Key? key}) : super(key: key);

  @override
  State<BurcDetay> createState() => _BurcDetayState();
}

class _BurcDetayState extends State<BurcDetay> {
  Color appBarRengi=Colors.transparent;
  late PaletteGenerator _generator;
  @override
  void initState() {
    // TODO: implement initState
   appBarRenginiBul();
  
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text(widget.secilenBurc.burcAdi + " Burcu ve Özellikleri"),
           
            expandedHeight: 250,
            pinned: true,
            backgroundColor:appBarRengi,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              background: Image.asset(
                'images/' + widget.secilenBurc.burcBuyukResim,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(16),
              padding:EdgeInsets.all(18),
              child: SingleChildScrollView(
                child: Text(             
                  widget.secilenBurc.burcDetay,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
  
  void appBarRenginiBul() async{
     _generator=await PaletteGenerator.fromImageProvider(AssetImage('images/${widget.secilenBurc.burcBuyukResim}'));
     appBarRengi=_generator.dominantColor!.color;
     setState(() {
       
     });
    
  }
}
