import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SonucEkrani extends StatefulWidget {
  int dogruSayisi;

  SonucEkrani({required this.dogruSayisi});

  @override
  State<SonucEkrani> createState() => _SonucEkraniState();
}

class _SonucEkraniState extends State<SonucEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sonuç Ekranı"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              "  ${widget.dogruSayisi} DOĞRU ${5 - widget.dogruSayisi} YANLIŞ",
              style: TextStyle(fontSize: 30),
            ),
            Text(
              " % ${((widget.dogruSayisi * 100) / 5).toInt()} Başarı",
              style: TextStyle(fontSize: 30, color: Colors.pink),
            ),
            SizedBox(
              width: 250,
              height: 50,
              child: ElevatedButton(
                child: Text("TEKRAR DENE"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
