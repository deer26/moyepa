import 'package:flutter/material.dart';
import 'package:moyepa/helper/moyepa_screen.dart';

class Kisi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "images/farmer.jpg",
                ),
                fit: BoxFit.cover,
                colorFilter:
                    ColorFilter.mode(Colors.black, BlendMode.softLight)),
          ),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("Biz Kimiz ?"),
            backgroundColor: Colors.transparent,
          ),
          // backgroundColor: Colors.teal,
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Column(
                // To show widgets in middle of screen.
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  MoyepaScreen(),
                  // Following widgets here.
                  CircleAvatar(
                    radius: 60.0,
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage(
                      "images/memo.png",
                    ),
                  ),
                  Text(
                    'Mehmet Özcan',
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 30.0,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Makina Mühendisi',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                      letterSpacing: 2.5,
                      color: Colors.teal.shade100,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    color: Colors.white.withOpacity(0.7),
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.contact_mail,
                        color: Colors.green,
                      ),
                      title: Text(
                        'info@moyepa.com',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'Source Sans Pro',
                          color: Colors.teal.shade900,
                        ),
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    color: Colors.white.withOpacity(0.7),
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.green,
                      ),
                      title: Text(
                        '+90 0 506 795 4685',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'Source Sans Pro',
                          color: Colors.teal.shade900,
                        ),
                      ),
                    ),
                  ),
                ]),
          ),
        )
      ],
    );
  }
}
