import 'package:first_flutter_app/screens/Sessions%20tasks/hotels%20app/model/hotel.dart';
import 'package:first_flutter_app/screens/Sessions%20tasks/login/login_screen.dart';
import 'package:flutter/material.dart';

import 'hotel_name.dart';
import 'hotel_widget.dart';

class HotelsApp extends StatelessWidget {
  static const String routeName = 'hotel';
  List<Hotel> hotelList = [
    Hotel(name: 'hotel name', image: 'assets/images/sharm.png'),
    Hotel(name: 'hotel name', image: 'assets/images/sharm.png'),
    Hotel(name: 'hotel name', image: 'assets/images/sharm.png'),
    Hotel(name: 'hotel name', image: 'assets/images/sharm.png'),
    Hotel(name: 'hotel name', image: 'assets/images/sharm.png'),
    Hotel(name: 'hotel name', image: 'assets/images/sharm.png'),
    Hotel(name: 'hotel name', image: 'assets/images/sharm.png'),
    Hotel(name: 'hotel name', image: 'assets/images/sharm.png'),
    Hotel(name: 'hotel name', image: 'assets/images/sharm.png'),
    Hotel(name: 'hotel name', image: 'assets/images/sharm.png'),
    Hotel(name: 'hotel name', image: 'assets/images/sharm.png'),
    Hotel(name: 'hotel name', image: 'assets/images/sharm.png'),
    Hotel(name: 'hotel name', image: 'assets/images/sharm.png'),
    Hotel(name: 'hotel name', image: 'assets/images/sharm.png'),
    Hotel(name: 'hotel name', image: 'assets/images/sharm.png'),
    Hotel(name: 'hotel name', image: 'assets/images/sharm.png'),
    Hotel(name: 'hotel name', image: 'assets/images/sharm.png'),
    Hotel(name: 'hotel name', image: 'assets/images/sharm.png'),
    Hotel(name: 'hotel name', image: 'assets/images/sharm.png'),
    Hotel(name: 'hotel name', image: 'assets/images/sharm.png'),
    Hotel(name: 'hotel name', image: 'assets/images/sharm.png'),
    Hotel(name: 'hotel name', image: 'assets/images/sharm.png'),
    Hotel(name: 'hotel name', image: 'assets/images/sharm.png'),
    Hotel(name: 'hotel name', image: 'assets/images/sharm.png'),
    Hotel(name: 'hotel name', image: 'assets/images/sharm.png'),
    Hotel(name: 'hotel name', image: 'assets/images/sharm.png'),
    Hotel(name: 'hotel name', image: 'assets/images/sharm.png'),
    Hotel(name: 'hotel name', image: 'assets/images/sharm.png'),
    Hotel(name: 'hotel name', image: 'assets/images/sharm.png'),
    Hotel(name: 'hotel name', image: 'assets/images/sharm.png'),
    Hotel(name: 'hotel name', image: 'assets/images/sharm.png'),
    Hotel(name: 'hotel name', image: 'assets/images/sharm.png'),
    Hotel(name: 'hotel name', image: 'assets/images/sharm.png'),
    Hotel(name: 'hotel name', image: 'assets/images/sharm.png'),
    Hotel(name: 'hotel name', image: 'assets/images/sharm.png'),
    Hotel(name: 'hotel name', image: 'assets/images/sharm.png'),
    Hotel(name: 'hotel name', image: 'assets/images/sharm.png'),
    Hotel(name: 'hotel name', image: 'assets/images/sharm.png'),
    Hotel(name: 'hotel name', image: 'assets/images/sharm.png'),
    Hotel(name: 'hotel name', image: 'assets/images/sharm.png'),
    Hotel(name: 'hotel name', image: 'assets/images/sharm.png'),
    Hotel(name: 'hotel name', image: 'assets/images/sharm.png'),
    Hotel(name: 'hotel name', image: 'assets/images/sharm.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: Text(
          'home Screen',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: GridView.builder(
                  itemBuilder: (context, index) {
                    return HotelWidget(hotel_name: hotelList[index].name,
                        hotel_image: hotelList[index].image); },
                  itemCount: hotelList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 24,
                    crossAxisSpacing: 10,
                  ),
                ),
              ),
            ],
          )
    ),
    );
  }
}
/**
 *        ElevatedButton(
      onPressed: () {
        //Todo: back to login screen
        Navigator.of(context).pushNamed(LoginScreen.routeName);
        // Navigator.pop(context);
      },
      child: Text('back',
        style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.indigo
        ),
      ),
    ),
 */
/**
 * ListView.separated(
    itemBuilder: (context, index) {
    return HotelWidget(hotel_name: hotelList[index].name,
    hotel_image: hotelList[index].image); },
    itemCount: hotelList.length,
    separatorBuilder: (context, index) {
    return SizedBox(
    height: 16,
    );
    },
    )
 * */
/**
 *
    /////////////////////////////////////////////////////////\
    ListView.builder(
    itemBuilder: (context, index) {
    return HotelWidget(hotel_name: hotelList[index].name,
    hotel_image: hotelList[index].image); },
    itemCount: hotelList.length,
    )
 *
 */
/**
    //////////////////////////////////////////////////////////////
    // SingleChildScrollView(
    // child: Column(
    // spacing: 8,
    // children: hotelList.map(
    // //Anonymous Fun
    // ( hotel) {
    // return HotelWidget(
    // hotel_name: hotel.name,
    // hotel_image: hotel.image
    // );
    // }
    // //Arrow Fun
    // // (Hotel hotel) => HotelWidget(
    // //     hotel_name: hotel.name,
    // //     hotel_image: hotel.image)
    // ).toList() ,
    // // [
    // //   HotelName(hotelName: 'Availabe hotels',radius: 16,verticalPadding: 16,),
    // //   Row(
    // //     children: [
    // //       HotelWidget(hotel_name: 'Sharm Elshikh', hotel_image: 'assets/images/sharm.png'),
    // //       HotelWidget(hotel_name: 'AleX', hotel_image: 'assets/images/alex.png'),
    // //     ],
    // //   ),
    // //   Row(
    // //     children: [
    // //       HotelWidget(hotel_name: 'Dahab', hotel_image: 'assets/images/Dahab.png'),
    // //       HotelWidget(hotel_name: 'Marasy', hotel_image: 'assets/images/Marasy.png'),
    // //     ],
    // //   ),
    // //   Row(
    // //     children: [
    // //       HotelWidget(hotel_name: 'Nile', hotel_image: 'assets/images/Nile.png'),
    // //       HotelWidget(hotel_name: 'Aswan', hotel_image: 'assets/images/Aswan.png')
    // //     ],
    // //   ),
    // //   Row(
    // //     children: [
    // //       HotelWidget(hotel_name: 'Nile', hotel_image: 'assets/images/Nile.png'),
    // //       HotelWidget(hotel_name: 'Aswan', hotel_image: 'assets/images/Aswan.png')
    // //     ],
    // //   )
    // // ],
    // ),
    // ),
 * */
/**
    ///////////////////////////////////////////////////////////////////////
    // Container(
    //   decoration: BoxDecoration(
    //     borderRadius: BorderRadiusGeometry.circular(16)
    //   ),
    // clipBehavior: Clip.antiAlias,
    //
    // )
 */
/**
 *
    //////////////////////////////////////////////////////////////////////

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
 */
/**
    ////////////////////////////////////////////////////////////////////////
 * child: Column(
    children: [
    ElevatedButton(
    onPressed: () {
    //Todo: back to login screen
    // Navigator.of(context).pushNamed(HotelsApp.routeName);
    Navigator.pop(context);
    },
    child: Text('back',
    style: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.indigo
    ),
    ),
    ),
    Expanded(
    child: GridView.builder(
    itemBuilder: (context, index) {
    return HotelWidget(hotel_name: hotelList[index].name,
    hotel_image: hotelList[index].image); },
    itemCount: hotelList.length,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    mainAxisSpacing: 24,
    crossAxisSpacing: 10,
    ),
    ),
    ),
    ],
    )
 *
 * */
/*
////////////////////////////////////////////////////////////////////////////////////////
// برنامج الاوتيلات بس من غير سكرول
 * @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.indigo,
        //   centerTitle: true,
        //   title: Text('home Screen',
        //     style: TextStyle(
        //         fontSize: 24,
        //         fontWeight: FontWeight.bold,
        //         color: Colors.white
        //     ),
        //   ),
        // ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              spacing: 8,
            children: [
                HotelName(hotelName: 'Availabe hotels',
                  radius: 16,
                  verticalPadding: 16,),
                Row(
                  children: [
                    HotelWidget(hotel_name: 'Sharm Elshikh',
                        hotel_image: 'assets/images/sharm.png'),
                    SizedBox(width: 8,),
                    HotelWidget(hotel_name: 'AleX',
                        hotel_image: 'assets/images/alex.png'),
                  ],
                ),
                Row(
                  children: [
                    HotelWidget(hotel_name: 'Dahab',
                        hotel_image: 'assets/images/Dahab.png'),
                    SizedBox(width: 8,),
                    HotelWidget(hotel_name: 'Marasy',
                        hotel_image: 'assets/images/Marasy.png'),
                  ],
                ),
                Row(
                  children: [
                    HotelWidget(hotel_name: 'Nile',
                        hotel_image: 'assets/images/Nile.png'),
                    SizedBox(width: 8,),
                    HotelWidget(hotel_name: 'Aswan',
                        hotel_image: 'assets/images/Aswan.png')
                  ],
                ),
                // Row(
                //   children: [
                //     HotelWidget(hotel_name: 'Nile',
                //         hotel_image: 'assets/images/Nile.png'),
                //     HotelWidget(hotel_name: 'Aswan',
                //         hotel_image: 'assets/images/Aswan.png')
                //   ],
                // )
              ],
            ),
          ),
        )
    );
  }*/
