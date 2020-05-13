import 'package:flutter/material.dart';
import 'package:moyepa/helper/urunler_helper.dart';

class UrunlerRow extends StatefulWidget {
  
  @override
  _UrunlerRowState createState() => _UrunlerRowState();
}

class _UrunlerRowState extends State<UrunlerRow> {
  String urunLink = "urunler/ahmet.jpg"  ;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(30.0),
          height: 400,
          decoration: BoxDecoration(
            image: DecorationImage(image: 
            AssetImage(urunLink,),
            fit: BoxFit.fill),
              color: Colors.teal,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30))),
          width: MediaQuery.of(context).size.width,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: Urunler.urunler
                .map((val) => customContainer(val.urunUrl))
                .toList(),
          ),
        ),
      ],
    );
  }

  Widget customContainer(String urunUrl) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () {
            setState(() {
              urunLink  = urunUrl;
            });
            
          },
          borderRadius: BorderRadius.circular(30),
          splashColor: Colors.green,
          focusColor: Colors.blue,
          child: CircleAvatar(
            minRadius: 80,
            backgroundImage: AssetImage(urunUrl),
          ),
        ),
      );
}
