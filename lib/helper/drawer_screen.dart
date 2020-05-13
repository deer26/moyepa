import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;

class DrawerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          SizedBox(
            height: 300.0,
            child: DrawerHeader(
              curve: Curves.fastOutSlowIn,
              // Normalde padding verilmiş olarak geliyor, resmin tam sığması için padding sıfırladım
              padding: EdgeInsets.all(0),
              child: Image.asset(
                "images/giris.JPG",
                fit: BoxFit.fill,
              ),
            ),
          ),
          ListTile(
            leading: IconButton(
              onPressed: () {
                UrlLauncher.launch(
                    "https://www.google.com/maps/place/Ak%C4%B1nc%C4%B1lar,+Gazi+Blv.+No:9,+10020+Bal%C4%B1kesir+Merkez%2FBal%C4%B1kesir/@39.6501677,27.8842689,19z/data=!3m1!4b1!4m19!1m13!4m12!1m6!1m2!1s0x14b7004b0a06e0bf:0x19804880b8039efa!2zWcSxbGTEsXLEsW0sIENpdmlsIEJhbMSxa2VzaXIsIEdhemkgQmx2LiBObzo4LCAxMDEwMCBLYXJlc2kvQmFsxLFrZXNpcg!2m2!1d27.8847168!2d39.6498163!1m3!2m2!1d27.8850253!2d39.6501063!3e2!3m4!1s0x14b700361a70cc65:0x5e26ce32fec6325c!8m2!3d39.6501667!4d27.8848174");
              },
              icon: Icon(
                Icons.work,
                color: Colors.lightBlueAccent,
              ),
            ),
            title: Text("Ofis"),
            subtitle:
                Text("Akıncılar Mah.Gazi Bulvarı No:9/15 Karesi/Balıkesir"),
          ),
          ListTile(
            leading: IconButton(
              onPressed: () {
                UrlLauncher.launch(
                    "https://www.google.com/maps/place/Sanayi+Sitesi+4+Bolu+Kap%C4%B1/@39.6768001,27.93087,17z/data=!3m1!4b1!4m5!3m4!1s0x14b655670e419565:0x1a3c9a9fc3ead259!8m2!3d39.676796!4d27.933064");
              },
              icon: Icon(
                Icons.store,
                color: Colors.green,
              ),
            ),
            title: Text("Depo"),
            subtitle: Text("Balıkesir San.Sit.4.Kapı Yörükoğlu Metal Yanı"),
          ),
          ListTile(
            title: Text("Email"),
            subtitle: Text("info@moyepa.com"),
            leading: IconButton(
              onPressed: () {
                UrlLauncher.launch("mailto:info@moyepa.com");
              },
              icon: Icon(
                Icons.mail,
                color: Colors.blue,
              ),
            ),
          ),
          ListTile(
            title: Text("Web"),
            subtitle: Text("www.moyepa.com"),
            leading: IconButton(
              onPressed: () {
                UrlLauncher.launch("http:www.moyepa.com");
              },
              icon: Icon(
                Icons.streetview,
                color: Colors.yellow,
              ),
            ),
          ),
          ListTile(
            title: Text("Cep-Tel"),
            subtitle: Text("+90 0(506) 795 4685"),
            leading: IconButton(
              onPressed: () {
                UrlLauncher.launch("tel:+90 0(506) 795 4685");
              },
              icon: Icon(
                Icons.call,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
