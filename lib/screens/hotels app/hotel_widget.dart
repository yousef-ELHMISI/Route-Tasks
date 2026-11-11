import 'package:flutter/cupertino.dart';
import 'hotel_name.dart';

class HotelWidget extends StatelessWidget{
  String hotel_name;
  String hotel_image;
  HotelWidget({required this.hotel_name,required this.hotel_image});
  @override
  Widget build(BuildContext context) {
    return Expanded(
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
      ),
    );
  }
}