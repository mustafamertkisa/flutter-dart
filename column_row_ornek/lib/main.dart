import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.black54,
      body: SafeArea(
          child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 100,
            color: Colors.white,
            child: Text("1. Container"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.redAccent,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.yellowAccent,
              )
            ],
          ),
          Container(
            height: 100,
            color: Colors.lightBlue,
            child: Text("2. Container"),
          )
        ],
      )),
    ),
  ));
}
