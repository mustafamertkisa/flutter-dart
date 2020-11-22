import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Color(0xff025959),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 70.0,
                backgroundColor: Color(0xff025959),
                backgroundImage: AssetImage("assets/images/contact.jpg"),
              ),
              Text(
                "Mustafa Mert Kısa",
                style: TextStyle(
                    fontFamily: "Kalam",
                    fontSize: 45,
                    color: Color(0xffF2E0C9)),
              ),
              Text(
                "Benimle iletişime geç!",
                style: TextStyle(
                    fontFamily: "Kalam",
                    fontSize: 20,
                    color: Color(0xffF2E0C9)),
              ),
              Container(
                width: 200.0,
                child: Divider(
                  height: 60.0,
                  color: Colors.yellowAccent,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(
                  horizontal: 45.0,
                ),
                color: Color(0xff04BFBF),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.white,
                  ),
                  title: Text(
                    "m.mertkisa@gmail.com",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Card(
                margin: EdgeInsets.symmetric(
                  horizontal: 45.0,
                ),
                color: Color(0xff04BFBF),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.white,
                  ),
                  title: Text(
                    "+90 555 xxx xx xx",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ),
  ));
}
