import 'package:first_flutter_app/screens/Task%202%20Facebook%20Screen/model/posts_model.dart';
import 'package:first_flutter_app/screens/Task%202%20Facebook%20Screen/model/story_model.dart';
import 'package:first_flutter_app/screens/Task%202%20Facebook%20Screen/posts.dart';
import 'package:first_flutter_app/screens/Task%202%20Facebook%20Screen/story_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreenFace extends StatelessWidget {
  static const String routeName = 'home_screen_face';
  List<StoryModel> storyData =[
    StoryModel(profileImage: 'assets/images/profile_.png', storyImage: 'assets/images/story_1.png'),
    StoryModel(profileImage: 'assets/images/profile_2.png', storyImage: 'assets/images/story_1.png'),
    StoryModel(profileImage: 'assets/images/profile_3.png', storyImage: 'assets/images/story_1.png'),
    StoryModel(profileImage: 'assets/images/profile_.png', storyImage: 'assets/images/story_1.png'),
    StoryModel(profileImage: 'assets/images/profile_2.png', storyImage: 'assets/images/story_1.png'),
    StoryModel(profileImage: 'assets/images/profile_3.png', storyImage: 'assets/images/story_1.png'),
    StoryModel(profileImage: 'assets/images/profile_.png', storyImage: 'assets/images/story_1.png'),
    StoryModel(profileImage: 'assets/images/profile_2.png', storyImage: 'assets/images/story_1.png'),
    StoryModel(profileImage: 'assets/images/profile_3.png', storyImage: 'assets/images/story_1.png'),
    StoryModel(profileImage: 'assets/images/profile_.png', storyImage: 'assets/images/story_1.png'),
    StoryModel(profileImage: 'assets/images/profile_2.png', storyImage: 'assets/images/story_1.png'),
    StoryModel(profileImage: 'assets/images/profile_3.png', storyImage: 'assets/images/story_1.png'),
    StoryModel(profileImage: 'assets/images/profile_.png', storyImage: 'assets/images/story_1.png'),
    StoryModel(profileImage: 'assets/images/profile_2.png', storyImage: 'assets/images/story_1.png'),
    StoryModel(profileImage: 'assets/images/profile_3.png', storyImage: 'assets/images/story_1.png'),
  ];
  List<PostsModel> postsData = [
    PostsModel(profileImage: 'assets/images/post_2.png', postImage: 'assets/images/post.png'),
    PostsModel(profileImage: 'assets/images/post_2.png', postImage: 'assets/images/post.png'),
    PostsModel(profileImage: 'assets/images/post_2.png', postImage: 'assets/images/post.png'),
    PostsModel(profileImage: 'assets/images/post_2.png', postImage: 'assets/images/post.png'),
    PostsModel(profileImage: 'assets/images/post_2.png', postImage: 'assets/images/post.png'),
    PostsModel(profileImage: 'assets/images/post_2.png', postImage: 'assets/images/post.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        appBar: AppBar(
          backgroundColor: Color(0XFFFFFFFF),
          title: Image.asset('assets/images/Facebook1.png', height: 16),
          actions: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/ic_plus.svg'),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/Search.svg'),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/Messenger.svg'),
            ),
          ],

          bottom: TabBar(
            indicatorColor: Color(0xFF1877F2),
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: Color(0xFF1877F2),
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(
                icon: Builder(
                  builder: (context) {
                    final color = IconTheme.of(context).color ?? Colors.grey;

                    return SvgPicture.asset(
                      'assets/icons/home.svg',
                      colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
                    );
                  },
                ),
              ),
              Tab(
                icon: Builder(
                  builder: (context) {
                    final color = IconTheme.of(context).color ?? Colors.grey;

                    return SvgPicture.asset(
                      'assets/icons/reels.svg',
                      colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
                    );
                  },
                ),
              ),
              Tab(
                icon: Builder(
                  builder: (context) {
                    final color = IconTheme.of(context).color ?? Colors.grey;

                    return SvgPicture.asset(
                      'assets/icons/market.svg',
                      colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
                    );
                  },
                ),
              ),
              Tab(
                icon: Builder(
                  builder: (context) {
                    final color = IconTheme.of(context).color ?? Colors.grey;

                    return SvgPicture.asset(
                      'assets/icons/Profile.svg',
                      colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
                    );
                  },
                ),
              ),
              Tab(
                icon: Builder(
                  builder: (context) {
                    final color = IconTheme.of(context).color ?? Colors.grey;

                    return SvgPicture.asset(
                      'assets/icons/Notification.svg',
                      colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
                    );
                  },
                ),
              ),
              Tab(
                icon: CircleAvatar(
                  radius: 16,
                  backgroundImage: AssetImage('assets/images/elbalf.jpg'),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          //          1
          ListView.separated(
            itemCount: postsData.length + 2,
            separatorBuilder: (context, index) => const Divider(thickness: 3),
            itemBuilder: (context, index) {
              if (index == 0) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 24,
                        backgroundImage: AssetImage('assets/images/elbalf.jpg'),
                      ),
                      const SizedBox(width: 8),
                      const Expanded(
                        child: TextField(
                          cursorColor: Color(0XFF1877F2),
                          decoration: InputDecoration(
                            hint: Text(
                              'What\'s in Your Mind?',
                              style: TextStyle(
                                color: Color(0XFF898F9C),
                                fontSize: 18,
                              ),
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset('assets/icons/Photos.svg'),
                      ),
                    ],
                  ),
                );
              }

              if (index == 1) {
                return SizedBox(
                  height: 200,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, storyIndex) {
                      if (storyIndex == 0) {
                        return const CreateStoryItem(
                          userImage: 'assets/images/elbalf.jpg',
                        );
                      }
                      return StoryItem(story: storyData[storyIndex - 1]);
                    },
                    separatorBuilder: (context, storyIndex) => const SizedBox(width: 10),
                    itemCount: storyData.length + 1,
                  ),
                );
              }

              return Posts(post: postsData[index - 2]);
            },
          ),


          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Reels')
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Market')
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('My Profile')
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Notifications')
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Sittings')
            ],
          )
        ]
        ),
      ),
    );
  }
}
