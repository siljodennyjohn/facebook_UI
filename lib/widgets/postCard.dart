import 'package:facebook/assets.dart';
import 'package:facebook/sections/headerButtonSection.dart';
import 'package:facebook/widgets/headerButton.dart';
import 'package:facebook/widgets/likedIcon.dart';
import 'package:facebook/widgets/verifiedIcon.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String postProfileName;
  final Widget postProfilePicture;
  final String postTime;
  final IconData postStatus;
  final String postTitle;
  final String postImage;
  final bool showBlueTick;
  final String likeCount;
  final String commentCount;
  final String shareCount;
  final String footerAvatar;

  PostCard({
    required this.postProfileName,
    required this.postProfilePicture,
    required this.postTime,
    required this.postStatus,
    required this.postTitle,
    required this.postImage,
    this.showBlueTick = false,
    required this.likeCount,
    required this.commentCount,
    required this.shareCount,
    required this.footerAvatar,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postCardHeader(postProfilePicture, postProfileName, postTime,
              postStatus, showBlueTick),
          postCardTitle(postTitle),
          postCardImage(postImage),
          postCardFooter(
            likeCount,
            commentCount,
            shareCount,
            postProfilePicture,
            footerAvatar,
          ),
          thinDivider,
          HeaderButtonSection(
            button1: headerButton(
                buttonText: "Like",
                buttonIcon: Icons.thumb_up_alt,
                buttonAction: () {},
                buttonColor: Colors.grey),
            button2: headerButton(
                buttonText: "Comment",
                buttonIcon: Icons.comment,
                buttonAction: () {},
                buttonColor: Colors.grey),
            button3: headerButton(
                buttonText: "Share",
                buttonIcon: Icons.share,
                buttonAction: () {},
                buttonColor: Colors.grey),
          )
        ],
      ),
    );
  }
}

//Header section of the postcard.
Widget postCardHeader(
  dynamic postProfilePicture,
  String postProfileName,
  String postTime,
  IconData? postStatus,
  dynamic showBlueTick,
) {
  return Container(
    height: 70,
    child: ListTile(
      leading: postProfilePicture,
      title: Row(
        children: [
          Text(
            postProfileName,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          showBlueTick ? VerfiedIcon() : SizedBox(),
        ],
      ),
      subtitle: Row(
        children: [
          Text(
            postTime,
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Icon(
            postStatus,
            color: Colors.grey,
            size: 15,
          )
        ],
      ),
      trailing: IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz)),
    ),
  );
}

//Title section of the postcard

Widget postCardTitle(String postTitle) {
  return
      // ignore: unnecessary_null_comparison
      postTitle != null && postTitle != ""
          ? Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 18),
              child: Text(
                // ignore: unnecessary_null_comparison
                postTitle == null ? "" : postTitle,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            )
          : SizedBox();
}

//Image section of the postcard

Widget postCardImage(String postImage) {
  return Container(
    padding: EdgeInsets.only(
      top: 10,
    ),
    child: Image.asset(postImage),
  );
}

//Footer section of the postcard
Widget postCardFooter(
  dynamic likeCount,
  dynamic commentCount,
  dynamic shareCount,
  dynamic postProfilePicture,
  String footerAvatar,
) {
  return Container(
    height: 50,
    padding: EdgeInsets.only(
      left: 10,
      right: 10,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Row(
            children: [
              LikedIcon(),
              SizedBox(width: 3),
              displayText(label: likeCount),
            ],
          ),
        ),
        Container(
          child: Row(
            children: [
              displayText(label: commentCount),
              SizedBox(width: 3),
              displayText(label: "Comments"),
              SizedBox(width: 10),
              displayText(label: shareCount),
              SizedBox(width: 3),
              displayText(label: "Shares"),
              SizedBox(width: 8),
              CircleAvatar(
                radius: 8,
                backgroundImage: AssetImage(footerAvatar),
              )
            ],
          ),
        )
      ],
    ),
  );
}

Widget displayText({required String label}) {
  return Text(
    // ignore: unnecessary_null_comparison
    label == null ? "" : label,
    style: TextStyle(
      color: Colors.grey,
    ),
  );
}
