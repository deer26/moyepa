import 'package:carousel_slider/carousel_slider.dart';
import "package:flutter/material.dart";
import 'package:moyepa/constants/constanst.dart';
import 'package:moyepa/helper/drawer_screen.dart';
import 'package:moyepa/helper/moyepa_screen.dart';
import 'package:moyepa/screens/detail_screen.dart';
import 'package:moyepa/screens/moyepa_info.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        elevation: 0,
        titleSpacing: -10,
        backgroundColor: Colors.transparent,
        title: MoyepaScreen(),
      ),
      drawer: DrawerScreen(),
      body: ListView(
        children: <Widget>[
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Moyepa Tarım Makina Yedek Parça San.Tic.Ltd.Şti.",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          InkWell(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Kisi())),
              child: _carouseSlider),
          SizedBox(
            height: 20.0,
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              color: Colors.green.withOpacity(0.7),
            ),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Kategoriler",
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Container(
            child: GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: ScrollPhysics(),
              children: kategori.map((val) {
                return Container(
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                    ),
                    color: Colors.black.withOpacity(0.6),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          val,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          focusColor: Colors.green,
                          highlightColor: Colors.blue,
                          hoverColor: Colors.yellow,
                          splashColor: Colors.lightBlueAccent,
                          onTap: () {
                            print(mapKategori()[val]);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      DetailScreen(mapKategori()[val], val)),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.4),
                              image: DecorationImage(
                                  image: AssetImage(
                                    mapKategori()[val],
                                  ),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget get _carouseSlider => Container(
        // color: Colors.white.withOpacity(0.4),
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.4), shape: BoxShape.circle),
        height: 250.0,
        child: CarouselSlider(
          items: [
            Image.asset(
              "slider/1.png",
            ),
            Image.asset("slider/2.png"),
            Image.asset("slider/3.png"),
            Image.asset("slider/4.png"),
            Image.asset("slider/5.png"),
            Image.asset("slider/6.png"),
            Image.asset("slider/7.png"),
            Image.asset("slider/8.png"),
            Image.asset("slider/9.png"),
          ],
          options: CarouselOptions(
            height: 180.0,
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
          ),
        ),
      );
}
