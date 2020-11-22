import 'package:bilgi_yarismasi/constants.dart';
import 'package:bilgi_yarismasi/yarismaVerileri.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BilgiYarismasi());
}

class BilgiYarismasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Bilgi Testi"),
          backgroundColor: Colors.indigo,
        ),
        backgroundColor: Colors.indigo,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: SoruAlani(),
          ),
        ),
      ),
    );
  }
}

class SoruAlani extends StatefulWidget {
  @override
  _SoruAlaniState createState() => _SoruAlaniState();
}

class _SoruAlaniState extends State<SoruAlani> {
  int dogruSayisi = 0;
  int yanlisSayisi = 0;

  List<Widget> tercihler = [];

  YarismaVerileri yarisma_1 = YarismaVerileri();

  void butonIslevi(bool tiklananButon) {
    //Son sorunun ikonunu eklemek için;
    if (yarisma_1.sorularBittiMi() == true) {
      setState(() {
        if (yarisma_1.getSoruYanit() == tiklananButon) {
          tercihler.add(dogruSimgesi);
          dogruSayisi++;
        } else {
          tercihler.add(yanlisSimgesi);
          yanlisSayisi++;
        }
      });

      showDialog(
        context: context,
        builder: (BuildContext context) {
          // return object of type Dialog
          return AlertDialog(
            title: new Text("Testi tamamladınız!"),
            content: new Text(
                "Doğru sayınız: $dogruSayisi \n Yanlış sayınız: $yanlisSayisi"),
            actions: <Widget>[
              // usually buttons at the bottom of the dialog
              new FlatButton(
                child: new Text("Yeniden Başla"),
                onPressed: () {
                  setState(() {
                    yarisma_1.soruNoSifirla();
                    tercihler = [];
                    dogruSayisi = 0;
                    yanlisSayisi = 0;
                  });
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    } else {
      setState(() {
        if (yarisma_1.getSoruYanit() == tiklananButon) {
          tercihler.add(dogruSimgesi);
          dogruSayisi++;
        } else {
          tercihler.add(yanlisSimgesi);
          yanlisSayisi++;
        }
        yarisma_1.sonrakiSoru();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 4,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                yarisma_1.getsoruMetni(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Wrap(
          direction: Axis.horizontal,
          spacing: 3,
          runSpacing: 3,
          children: tercihler,
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.0),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6.0),
                    child: RaisedButton(
                      padding: EdgeInsets.all(12),
                      color: Colors.red,
                      textColor: Colors.white,
                      child: Icon(
                        Icons.thumb_down,
                        size: 30.0,
                      ),
                      onPressed: () {
                        butonIslevi(false);
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6.0),
                    child: RaisedButton(
                        padding: EdgeInsets.all(12),
                        color: Colors.lightGreen,
                        textColor: Colors.white,
                        child: Icon(
                          Icons.thumb_up,
                          size: 30.0,
                        ),
                        onPressed: () {
                          butonIslevi(true);
                        }),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
