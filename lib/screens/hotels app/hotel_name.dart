import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HotelName extends StatelessWidget{
    String hotelName;
    double radius;
    double verticalPadding;
    double margin;
    HotelName({required this.hotelName,
    this.radius=40, this.verticalPadding=8, this.margin=0});
  @override
  Widget build(BuildContext context) {
    return   Container(
        padding: EdgeInsets.symmetric(vertical: verticalPadding),
        margin: EdgeInsets.all(margin),
        decoration: BoxDecoration(
          borderRadius: BorderRadiusGeometry.circular(radius),
          color: Color(0XFF024383),),
        alignment: Alignment.center,
        child: Text(hotelName,
          style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w700
          ),
        )
    );
  }
}