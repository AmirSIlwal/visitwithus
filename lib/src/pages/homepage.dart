import 'package:visitwithus/src/library/locallibrary.dart';
import 'package:visitwithus/src/pages/login.dart';
 class HomePage extends StatelessWidget {
   const HomePage({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       drawer: NavDrawer(),
       appBar: AppBar(
         title: Center(child:Text('Travel With Us')),
        // leading: Icon(Icons.menu),
         actions: [
           IconButton(onPressed:()=>Navigator.push(context,
             MaterialPageRoute(builder: (context) => MyLoginpage()),),
                icon: Icon(Icons.person))
         ],
       ),
       body: Container(
         child: SingleChildScrollView(
             controller: ScrollController(),
           child: Column(
             children: [
               SearchBar("Places"),
               Header("Popular Spots"),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Container(
                     height: 200,
                     width: 300,
                     child:
                         ListView(
                           controller: ScrollController(),
                           scrollDirection: Axis.horizontal,
                           children: [
                             ImageTile('Langtang', 'assets/langtang.jpg'),
                             ImageTile('Langtang', 'assets/langtang.jpg'),
                             ImageTile('Langtang', 'assets/langtang.jpg'),
                             ImageTile('Langtang', 'assets/langtang.jpg'),
                             ImageTile('Langtang', 'assets/langtang.jpg'),
                           ]
                         ),
                   ),
                   SeeMore()
                 ],
               ),
               Header('Adventures'),
             Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Container(
                       height: 200,
                       width: 300,
                       child:  ListView(
                           controller: ScrollController(),
                           scrollDirection: Axis.horizontal,
                           children: [
                             ImageTile('Langtang', 'assets/langtang.jpg'),
                             ImageTile('Langtang', 'assets/langtang.jpg'),
                             ImageTile('Langtang', 'assets/langtang.jpg'),
                             ImageTile('Langtang', 'assets/langtang.jpg'),
                             ImageTile('Langtang', 'assets/langtang.jpg'),
                           ]
                       ),
             ),
             SeeMore(),
                   ]),
               Header('Cultural Heritage'),
               Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Container(
                       height: 200,
                       width: 300,
                       child:  ListView(
                           controller: ScrollController(),
                           scrollDirection: Axis.horizontal,
                           children: [
                             ImageTile('Langtang', 'assets/langtang.jpg'),
                             ImageTile('Langtang', 'assets/langtang.jpg'),
                             ImageTile('Langtang', 'assets/langtang.jpg'),
                             ImageTile('Langtang', 'assets/langtang.jpg'),
                             ImageTile('Langtang', 'assets/langtang.jpg'),
                           ]
                       ),
                     ),
                     SeeMore(),
                   ]),

                ])
     ) ));
   }
   }
class SearchBar extends StatelessWidget {
  final String texthint;

  const SearchBar(this.texthint, { key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
      child: ListTile(
        //tileColor: Colors.black26,
        title: TextField(decoration: InputDecoration(hintText: texthint,
          hintStyle: TextStyle(
            color: Colors.black26,
            fontSize: 15,
            fontStyle: FontStyle.italic,
          ), suffixIcon: Icon(
            Icons.search, color: Colors.black26, size: 28,),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30))),
        ), style: TextStyle(
          color: Colors.black,
        ),
        ),),);
  }
}
class Header extends StatelessWidget {
  const Header(this.header,{Key? key, }) : super(key: key);
final String header;
  @override
  Widget build(BuildContext context) {
    return Text(header,style: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal
    ));
  }
}
class Label extends StatelessWidget {
   Label(this.word,this.size,{Key? key}) : super(key: key);
    String word;
    double size;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(padding: EdgeInsets.only(left:0,right:10 ,top:0,bottom: 2),
          child: Text(word,style: TextStyle(fontWeight:FontWeight.bold,color: Colors.redAccent,fontSize: size))),
    );;
  }
}
class ImageTile extends StatelessWidget {
  ImageTile(this.label,this.location,{Key? key}) : super(key: key);
String location;
String label;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5,top:3),
      padding: const EdgeInsets.only(left: 5,right: 5,bottom:0,top:0),
      height: 150,
      width: 250,
      child:Column(
          children:[ Image.asset(location,fit: BoxFit.cover,),
            SizedBox(height: 20,
              width: 200,
              child: Label(label,15),)
          ]),
      //Image.network("https://googleflutter.com/sample_image.jpg",fit: BoxFit.cover,)

    ) ;
  }
}
class SeeMore extends StatelessWidget {
  const SeeMore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 123,
      width: 50,
      color: Colors.black12,
      child: Column(
        children: [
          IconButton(onPressed: (){}, icon:Icon (Icons.arrow_forward)
          ),
          Text('see'),
          Text('more'),
        ],
      ),);
  }
}



