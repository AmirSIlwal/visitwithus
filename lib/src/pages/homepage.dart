import 'package:visitwithus/src/library/locallibrary.dart';

import 'package:flutter/material.dart';
import 'package:visitwithus/widget/buttonnavbar.dart';

import '../../widget/navdrawer.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Center(child: Text('Visit With Us')),
        // automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {}, //Search data comes from API
            icon: const Icon(Icons.search),
          )
        ],
      ),
      body: Center( 

        child: ListTile ( 

        ),
      ),
    );
  }
}
