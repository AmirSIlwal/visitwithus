import 'package:flutter/material.dart';
import 'package:visitwithus/src/library/locallibrary.dart';
import 'package:visitwithus/src/pages/feeedback.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Side menu',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
               // color: Colors.green
                image: DecorationImage(
                    fit: BoxFit.fill,
                  image:
                   AssetImage('D:\flutter Project\photos\photo1.jpg'))),
                 //Image.network('https://www.oyorooms.com/blog/wp-content/uploads/2018/08/CHITWAN-NATIONAL-PARK-min.jpg');
                 //image: Image.network(https://www.oyorooms.com/blog/wp-content/uploads/2018/08/CHITWAN-NATIONAL-PARK-min.jpg))

          ),
          ListTile(
            leading: Icon(Icons.hotel),
            title: Text('hotel'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.place),
            title: Text('Places to go'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.festival),
            title: Text('Festivals and events of nepal'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FeedBackPage()),
            ),
          ),
          // ListTile (
          //   leading: ,
          // )
        ],
      ),
    );
  }
}
