import 'package:first_flutter_app/screens/Task%202%20Facebook%20Screen/model/story_model.dart';
import 'package:flutter/material.dart';

class CreateStoryItem extends StatelessWidget {
  final String userImage;

  const CreateStoryItem({super.key, required this.userImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey.shade300),
      ),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        fit: StackFit.expand,
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              Expanded(
                flex: 7,
                child: Image.asset(
                  userImage,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              const Expanded(
                flex: 3,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 8),
                    child: Text(
                      'Create a\nStory',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        height: 1.2,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 36,
            child: Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                color: const Color(0xFF1877F2),
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 2.5),
              ),
              child: const Icon(
                Icons.add,
                color: Colors.white,
                size: 22,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class StoryItem extends StatelessWidget {
  final StoryModel story;

  const StoryItem({super.key, required this.story});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            story.storyImage,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 8,
            left: 8,
            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: const Color(0xFF1877F2),
                  width: 2,
                ),
              ),
              child: CircleAvatar(
                radius: 17,
                backgroundImage: AssetImage(story.profileImage),
              ),
            ),
          ),
        ],
      ),
    );
  }
}