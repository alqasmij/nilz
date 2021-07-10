import 'package:flutter/material.dart';
import 'package:nilzstore/screens/web_view_container.dart';
import 'package:nilzstore/helpers.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Replace the 3 second delay with your initialization code:
      future: Future.delayed(Duration(seconds: 3)),
      builder: (context, AsyncSnapshot snapshot) {
        // Show splash screen while waiting for app resources to load:
        if (snapshot.connectionState == ConnectionState.waiting) {
          return MaterialApp(debugShowCheckedModeBanner: false, home: Splash());
        } else {
          // Loading is done, return the app:
          return MaterialApp(debugShowCheckedModeBanner: false,
            home: WebViewExample(map['t10'],map['u10']));
        }
      },
    );
  }
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Define the default brightness and colors.
        primaryColor: Color(0xff7e57c2),
        scaffoldBackgroundColor: const Color(0xff7e57c2)),
      home: Center(
        child: Scaffold(
          body: Center(
            child: Container(
              height: 80,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/nylzIcon.png"),
                fit: BoxFit.contain,
              ),
            ),
            child: null /* add child content here */,
          )
          )
        ),
      ),
    );
  }
}