import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'hotel_name.dart';

class HotelWidget extends StatelessWidget {
  String hotel_name;
  String hotel_image;

  HotelWidget({required this.hotel_name, required this.hotel_image});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(16),
          child: Image.asset(
            hotel_image,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
        ),
        HotelName(hotelName: hotel_name, margin: 8),
      ],
    );
  }
}
/*
/////////////////////////////////////////////////////
// برنامج الاوتيلات من غير سكرول
* return Expanded(
        flex: 1,
        child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(16),
                  child:  Image.asset(hotel_image)
              ),
              HotelName(hotelName: hotel_name,margin: 8,)
            ],
        )
    );*/
/*
 الاوتيلات من مع سكرول
// return Stack(
// alignment: Alignment.bottomCenter,
// children: [
// ClipRRect(
// borderRadius: BorderRadiusGeometry.circular(16),
// child:  Image.asset(
// hotel_image,
// // width: double.infinity,
// // fit: BoxFit.fill,
// )
// ),
// HotelName(hotelName: hotel_name,margin: 8,)
// ],
// );
*
* */
