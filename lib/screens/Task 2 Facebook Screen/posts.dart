import 'package:first_flutter_app/screens/Task%202%20Facebook%20Screen/model/posts_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Posts extends StatelessWidget{
  PostsModel post;
  Posts({required this.post});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 16
          ),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(post.profileImage),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text('Route'),
                    Row(
                      children: [
                        Text('5h.',
                          style:TextStyle(
                            color: Color(0XFF898F9C),
                          ),),
                        SvgPicture.asset('assets/icons/Earth.svg')
                      ],
                    )
                  ],
                ),
              ),
              Spacer(),
              Align(
                child: IconButton(onPressed: (){},
                    icon: Icon(Icons.more_horiz)),
              )

            ],
          ),
        ),
        SizedBox(
          height: 400,
          child: Image.asset(post.postImage),
        ),
        Row(
          children: [
            IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/icons/heart-2.svg')),
            IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/icons/Chat_Dots.svg')),
            IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/icons/Paper_Plane.svg')),
            Spacer(),
            IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/icons/Bookmark.svg')),
          ],
        )
      ],
    );
  }
}