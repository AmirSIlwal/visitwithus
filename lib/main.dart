import 'package:flutter/material.dart';
import 'package:visitwithus/src/pages/homepage.dart';
//import 'package:visitwithus/src/pages/Searchbar.dart';
import 'package:visitwithus/src/pages/login.dart';
void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData( primaryColor: Color(0xFFAA00FF)),
        home: MyLoginpage(),
      ));
}
