import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WhatsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/backgrond.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Color(0XFF168C4B),
            leading: Icon(Icons.arrow_back_ios_new, color: Color(0XFFFFFFFF)),
            title: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'assets/images/image1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 14),
                Text('eljooo', style: TextStyle(color: Color(0XFFFFFFFF))),
              ],
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/icons/call.svg',
                  width: 24,
                  height: 24,
                ),
                color: Color(0XFFFFFFFF),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/icons/video.svg',
                  width: 24,
                  height: 24,
                ),
                color: Color(0XFFFFFFFF),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/icons/more.svg',
                  width: 24,
                  height: 24,
                ),
                color: Color(0XFFFFFFFF),
              ),

            ],
          ),
          body: SafeArea(
            child: Column(
              children: [
                Align(
                  alignment: AlignmentGeometry.topStart,
                  child: Container(
                    width: 70,
                    height: 30,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only( left: 10,
                      top: 25
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.zero,
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)
                      ),
                      color: Color(0XFF168C4B)
                    ),
                    child: Text('Hello !',
                      style: TextStyle(
                        color: Color(0XFFFFFFFF)
                      ),
                    ),

                  ),
                ),
                Align(
                  alignment: AlignmentGeometry.topRight,
                  child: Container(
                    width: 70,
                    height: 30,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only( right: 10,
                        top: 25,

                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10),
                            topRight: Radius.zero,
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)
                        ),
                        color: Color(0XFF181818)
                    ),
                    child: Text('Hello !',
                      style: TextStyle(
                          color: Color(0XFFFFFFFF)
                      ),
                    ),

                  ),
                ),
                Align(
                  alignment: AlignmentGeometry.topStart,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    width: 200,
                    height: 170,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only( left: 10,
                        top: 25
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.zero,
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)
                        ),
                        color: Color(0XFF168C4B)
                    ),
                    child: Text('Hey! Have you ever thought about how random moments can sometimes turn into the best memories? It’s like the universe loves to surprise us when we least expect it!',
                      style: TextStyle(
                          color: Color(0XFFFFFFFF)
                      ),
                    ),

                  ),
                ),
                Align(
                  alignment: AlignmentGeometry.topStart,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    width: 200,
                    height: 170,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only( left: 10,
                        top: 25
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.zero,
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)
                        ),
                        color: Color(0XFF168C4B)
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadiusGeometry.all(Radius.circular(15)),
                        child: Image.asset('assets/images/route.png')),
                  ),
                ),
                Align(
                  alignment: AlignmentGeometry.topRight,
                  child: Container(
                    padding: EdgeInsets.all(10) ,
                    width: 230,
                    height: 60,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only( right: 10,
                      top: 25,

                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10),
                            topRight: Radius.zero,
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)
                        ),
                        color: Color(0XFF181818)
                    ),
                    child: Text('what a great content tp learn flutter ',
                      style: TextStyle(
                          color: Color(0XFFFFFFFF)
                      ),
                    ),

                  ),
                ),
                Expanded(child: SizedBox()),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        style: TextStyle(
                          color: Color(0XFFFFFFFF),
                        ),
                        decoration: InputDecoration(
                          hintText: 'Type a Message ...',
                          hintStyle: TextStyle(color: Color(0XFFFFFFFF)),
                          prefixIcon: IconButton(
                              onPressed: (){},
                              icon: Icon(
                                  Icons.camera_alt_outlined,
                                  color: Color(0XFFFFFFFF)
                                )
                            ),
                          suffixIcon: IconButton(
                            onPressed: () {} ,
                            icon: SvgPicture.asset(
                              'assets/icons/send.svg',
                              width: 25,
                              height: 25
                            ),
                            color: Color(0XFFFFFFFF),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide:BorderSide(
                                color: Color(0XFF168C4B),
                                width: 1
                              )
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(12),
                        backgroundColor: Color(0XFF168C4B),
                        foregroundColor: Color(0XFFFFFFFF)
                      ),
                        child: Icon(Icons.mic)
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
