import 'package:flutter/material.dart';
import 'package:nilzstore/helpers.dart';
import 'package:nilzstore/screens/web_view_container.dart';

class AppDrawer extends StatelessWidget {

  get url => null;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
                color: Color(0xff7e57c2),
            image: DecorationImage(
            image: AssetImage("images/Nylz.png"),
            fit: BoxFit.cover)
            ),
            margin: EdgeInsets.all(0.0),
            padding: EdgeInsets.fromLTRB(20,40,20,20),
            child: Text(appName, style: TextStyle(color: Colors.white, fontSize: 20,), ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text(map['t01']),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WebViewExample(appName,map['u01'])));
            },
          ),
          ListTile(
            leading: Icon(Icons.checkroom),
            title: Text(map['t02']),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WebViewExample(appName,map['u02'])));
            },
          ),
          ListTile(
            leading: Icon(Icons.spa),
            title: Text(map['t03']),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WebViewExample(appName,map['u03'])));
            },
          ),
          ListTile(
            leading: Icon(Icons.face_retouching_natural),
            title: Text(map['t04']),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WebViewExample(appName,map['u04'])));
            },
          ),
          Divider(
            height: 5,
          ),
          ListTile(
            leading: Icon(Icons.login),
            title: Text(map['t05']),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WebViewExample(appName,map['u05'])));
            },
          ),
          ListTile(
            leading: Icon(Icons.history),
            title: Text(map['t06']),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WebViewExample(appName,map['u06'])));
            },
          ),
          ListTile(
            leading: Icon(Icons.manage_search),
            title: Text(map['t07']),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WebViewExample(appName,map['u07'])));
            },
          ),
          Divider(
            height: 5,
          ),
          ListTile(
            leading: Icon(Icons.gavel),
            title: Text(map['t08']),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WebViewExample(appName,map['u08'])));
            },
          ),
          ListTile(
            leading: Icon(Icons.gpp_maybe),
            title: Text(map['t09']),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WebViewExample(appName,map['u09'])));
            },
          ),
        ],
      ),
    );
  }
}
