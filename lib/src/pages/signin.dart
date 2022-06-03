import 'package:visitwithus/src/library/locallibrary.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,

        backgroundColor: Colors.white,
        appBar: AppBar(
        backgroundColor: Colors.white,
        leading:
        IconButton( onPressed: (){
      Navigator.pop(context);
    },icon:Icon(Icons.arrow_back_ios,size: 20,color: Colors.black,)),
    )
}