import 'package:first_flutter_app/screens/Sessions%20tasks/hotels%20app/hotels_app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget{
  static const String routeName = 'login';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: Text('Login Screen',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
        ),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              //Todo: navigate to hotels screen
              Navigator.of(context).pushNamed(HotelsApp.routeName);
              // Navigator.pushNamed(context, HotelsApp.routeName);
              // Navigator.of(context).pushReplacementNamed(HotelsApp.routeName);
          },
            child: Text('Login',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo
              ),
            ),
        ),
      ),
    );
  }
}