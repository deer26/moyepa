import 'package:flutter/material.dart';
import 'package:moyepa/constants/constanst.dart';

class DetailScreen extends StatelessWidget {
  final String pictureUrl;
  final String urunTitle;
  DetailScreen(this.pictureUrl, this.urunTitle);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              "images/detail.jpg",
              fit: BoxFit.cover,
            )),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.white.withOpacity(0.4),
            title: Text(urunTitle),
            elevation: 0,
          ),
          body: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10),
                height: 250.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30.0),
                  ),
                  color: Colors.white.withOpacity(0.7),
                  image: DecorationImage(
                    image: AssetImage(pictureUrl),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: detayPictures[pictureUrl].length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.7),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Stack(
                                children: <Widget>[
                                  Container(
                                    height: 150,
                                    // width: 150,
                                    margin: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Colors.teal,
                                      image: DecorationImage(
                                        image: AssetImage(
                                          detayPictures[pictureUrl][index]
                                              .keys
                                              .first
                                              .toString(),
                                        ),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(10),
                                    height: 150,
                                    decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.5),
                                      borderRadius: BorderRadius.circular(30)
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: Text(
                                  detayPictures[pictureUrl][index]
                                      .values
                                      .first
                                      .toString(),
                                  textScaleFactor: 2,
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
