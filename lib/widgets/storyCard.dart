import 'package:facebook/widgets/circularButton.dart';
import 'package:facebook/widgets/verifiedIcon.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  final String labelText;
  final String story;
  final String avatarStory;
  //flags to doing ternary operation
  final bool createStoryStatus;
  final bool celebrityStatus;

  StoryCard({
    required this.labelText,
    required this.story,
    required this.avatarStory,
    this.createStoryStatus = false,
    this.celebrityStatus = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(
        left: 5,
        right: 5,
        top: 10,
        bottom: 10
      ),
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(story), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 5,
            top: 5,
            child:
                //ternary operation
                createStoryStatus
                    ? CircularButton(
                        buttonAction: () {
                          print("Create new story");
                        },
                        buttonIcon: Icons.add,
                        iconColor: Colors.blue,
                      )
                    : Container(
                        width: 50,
                        height: 50,
                        margin: EdgeInsets.only(left: 10, top: 10),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 2,
                              color: Colors.blue,
                            )),
                        child: CircleAvatar(
                          backgroundImage: AssetImage(avatarStory),
                        ),
                      ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Row(
              children: [
                Text(
                  // ignore: prefer_if_null_operators, unnecessary_null_comparison
                  labelText != null ? labelText : "",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
               
                //ternary operation
                celebrityStatus
                    ? VerfiedIcon()
                    : SizedBox()
              ],
            ),
          )
        ],
      ),
    );
  }
}
