import 'package:first_flutter_app/screens/hotels%20app/hotel_name.dart';
import 'package:first_flutter_app/screens/hotels%20app/hotel_widget.dart';
import 'package:flutter/material.dart';

class HotelsApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: SafeArea(
        child:Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            spacing: 8,
            children: [
              HotelName(hotelName: 'Availabe hotels',radius: 16,verticalPadding: 16,),
              Row(
                children: [
                  HotelWidget(hotel_name: 'Sharm Elshikh', hotel_image: 'assets/images/sharm.png'),
                  HotelWidget(hotel_name: 'AleX', hotel_image: 'assets/images/alex.png'),
                ],
              ),
              Row(
                children: [
                  HotelWidget(hotel_name: 'Dahab', hotel_image: 'assets/images/Dahab.png'),
                  HotelWidget(hotel_name: 'Marasy', hotel_image: 'assets/images/Marasy.png'),
                ],
              ),
              Row(
                children: [
                  HotelWidget(hotel_name: 'Nile', hotel_image: 'assets/images/Nile.png'),
                  HotelWidget(hotel_name: 'Aswan', hotel_image: 'assets/images/Aswan.png')
                ],
              )
            ],
          ),
        )
    ),
  );
  }
}

                      // Container(
                      //   decoration: BoxDecoration(
                      //     borderRadius: BorderRadiusGeometry.circular(16)
                      //   ),
                      // clipBehavior: Clip.antiAlias,
                      //
                      // )

              // ElevatedButton(
              //     onPressed: (){},
              //     style: ElevatedButton.styleFrom(
              //       backgroundColor: Color(0XFF024383),
              //       padding: EdgeInsets.symmetric(vertical: 16),
              //       shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadiusGeometry.circular(16),
              //       ),
              //     ),
              //     child:Text('available Hotels',style: TextStyle(
              //       color: Colors.white,
              //       fontSize: 16,
              //       fontWeight: FontWeight.w700
              //     ),
              //     )
              // )
