import 'package:first_flutter_app/screens/Sessions%20tasks/session%203/calculator/calculator_screen.dart';
import 'package:first_flutter_app/screens/Task%202%20Facebook%20Screen/home_screen_face.dart';
import 'package:first_flutter_app/screens/Task%202%20Facebook%20Screen/login_screen_face.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: LoginScreenFace.routeName,
    routes: {
      LoginScreenFace.routeName:(context) => LoginScreenFace(),
      HomeScreenFace.routeName : (context) => HomeScreenFace()
    },
    // home: LoginScreenFace(),
  ),);
}

