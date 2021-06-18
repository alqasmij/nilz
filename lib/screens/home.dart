import 'package:flutter/material.dart';
import 'package:nilzstore/screens/web_view_container.dart';
import 'drawer.dart';
import 'package:nilzstore/helpers.dart';

class Home extends StatelessWidget {
  final WillPopCallback onWillPop = () {return Future.value(false);};

  get url => null;


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => false,
        child:MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              // Define the default brightness and colors.
              brightness: Brightness.light,
              primaryColor: Colors.lightBlue[800],
              accentColor: Color(0xff7e57c2),

              // Define the default font family.
              fontFamily: 'Cairo',

              // Define the default TextTheme. Use this to specify the default
              // text styling for headlines, titles, bodies of text, and more.
              textTheme: TextTheme(
                headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold, fontFamily: 'Cairo'),
                headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic, fontFamily: 'Cairo'),
                bodyText1:TextStyle(fontSize: 14.0, fontFamily: 'Cairo'),
                bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Cairo'),
              ),
              buttonTheme: ButtonThemeData(
                buttonColor: Color(0xff7e57c2),
                shape: RoundedRectangleBorder(),
                textTheme: ButtonTextTheme.accent,
              ),
            ),
        home:Directionality(
        textDirection: TextDirection.rtl, // set this property
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(appName,),
            backgroundColor: Color(0xff7e57c2),
            // This drop down menu demonstrates that Flutter widgets can be shown over the web view
            ),
            drawer: AppDrawer(),
            body: Builder(builder: (BuildContext context) {
            return Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      child: Container(
                          padding: EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: <Widget>[
                            Text(
                              'نيلز ستور',
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xff7e57c2)),
                            ),
                            Text(
                              'المكان الأنسب لجميع ماتبحث عنه في مكان واحد',
                              style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(primary: Color(0xff7e57c2), padding: EdgeInsets.fromLTRB(40,0,40,0)),
                              onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => WebViewExample(map['t10'],map['u10']))),
                              child: const Text('الصفحة الرئيسية'),
                            ),
                            const SizedBox(height: 30),
                          ],
                        )
                      )
                  ),
                  Expanded(
                    child: Image.asset('images/mainPng.png', fit: BoxFit.cover),


                  ),
                ],
              )
            );
                }
             )))
    )
    );
  }
}