import 'package:flutter/material.dart';
import 'login_page.dart';
import 'home_page.dart';
import 'splash_screen.dart'; // Import the splash screen file

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) => HomePage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kodeversitas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        fontFamily: 'nunito',
      ),
      // Start with SplashScreen instead of LoginPage
      home: SplashScreen(),
      routes: routes,
    );
  }
}