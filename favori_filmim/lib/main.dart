import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Color(0xff252626),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff358C7C),
        title: Text("Favori Filmim"),
      ),
      body: Center(child: Image.asset("images/batman.jpg")),
    ),
  ));
}
