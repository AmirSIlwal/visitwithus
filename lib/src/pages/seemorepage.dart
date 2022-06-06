import 'package:visitwithus/src/library/locallibrary.dart';

class SeeMorePage extends StatelessWidget{
  const SeeMorePage(this.gridDelegate,{Key? key}) : super(key: key);
  final SliverGridDelegate gridDelegate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children: [
           Row(
             children:[
               ImageTile('ok', 'assets/langtang.jpg'),
               ImageTile('ok', 'assets/langtang.jpg'),
             ]
           ),
            Row(
                children:[
                  ImageTile('ok', 'assets/langtang.jpg'),
                  ImageTile('ok', 'assets/langtang.jpg'),
                ]
            ),
            Row(
                children:[
                  ImageTile('ok', 'assets/langtang.jpg'),
                  ImageTile('ok', 'assets/langtang.jpg'),
                ]
            ),
            Row(
                children:[
                  ImageTile('ok', 'assets/langtang.jpg'),
                  ImageTile('ok', 'assets/langtang.jpg'),
                ]
            ),
            Row(
                children:[
                  ImageTile('ok', 'assets/langtang.jpg'),
                  ImageTile('ok', 'assets/langtang.jpg'),
                ]
            )


              ],
            )

    );
  }
}
