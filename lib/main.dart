import 'package:first_flutter_app/screens/Sessions%20tasks/hotels%20app/hotels_app.dart';
import 'package:first_flutter_app/screens/Sessions%20tasks/login/login_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: LoginScreen.routeName,
    routes: {
      LoginScreen.routeName:(context) => LoginScreen(),
      HotelsApp.routeName : (context) => HotelsApp()
    },
    // home: HotelsApp(),
  ),);
}

