import 'package:visitwithus/src/library/locallibrary.dart';
late SliverGridDelegate gridDelegate;
void init(){
  gridDelegate;
}
void main() {
 // final SliverGridDelegate gridDelegate;
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Color(0xFFEC965F),),
      home: HomePage(gridDelegate)
  ));
}
