import 'package:facebook/assets.dart';
import 'package:facebook/sections/headerButtonSection.dart';
import 'package:facebook/sections/roomSection.dart';
import 'package:facebook/sections/statusSection.dart';
import 'package:facebook/sections/storySection.dart';
import 'package:facebook/sections/suggestionSection1.dart';
import 'package:facebook/sections/suggestionSection2.dart';

import 'package:facebook/widgets/circularButton.dart';
import 'package:facebook/widgets/headerButton.dart';
import 'package:facebook/widgets/postCard.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "facebook",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 27,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            CircularButton(
                buttonAction: () {
                  print("Search button clicked");
                },
                buttonIcon: Icons.search),
            CircularButton(
                buttonAction: () {
                  print("Chat button clicked");
                },
                buttonIcon: Icons.chat)
          ],
        ),
        body: ListView(
          children: [
            StatusSection(),
            Divider(
              thickness: 1,
              color: Colors.grey[300],
            ),
            HeaderButtonSection(
              button1: headerButton(
                  buttonText: "Live",
                  buttonIcon: Icons.live_tv,
                  buttonAction: () {},
                  buttonColor: Colors.red),
              button2: headerButton(
                  buttonText: "Photo",
                  buttonIcon: Icons.photo_library,
                  buttonAction: () {},
                  buttonColor: Colors.green),
              button3: headerButton(
                  buttonText: "Room",
                  buttonIcon: Icons.video_call,
                  buttonAction: () {},
                  buttonColor: Colors.purple),
            ),
            thickDivider,
            RoomSection(),
            thickDivider,
            StorySection(),
            thickDivider,
            PostCard(
              postProfileName: "Dulquer Salman",
              postProfilePicture: dulquer,
              postTime: "2 mins",
              postStatus: Icons.public,
              postTitle: "Happy Diwali💥💥",
              postImage: dulquerPost,
              showBlueTick: true,
              likeCount: "105K",
              commentCount: "23K",
              shareCount: "410",
              footerAvatar: 'assets/avatars/dulquar.jpg',
            ),
            thickDivider,
            PostCard(
              postProfileName: "Mamootty",
              showBlueTick: true,
              postProfilePicture: mamooty,
              postTime: "1 hr",
              postStatus: Icons.public,
              postTitle: "",
              postImage: mamootyPost,
              likeCount: "407K",
              commentCount: "94K",
              shareCount: "12K",
              footerAvatar: 'assets/avatars/mamooty.jpg',
            ),
            thickDivider,
            SuggestionSection1(),
            thickDivider,
            PostCard(
                postProfileName: "Tamannah",
                showBlueTick: true,
                postProfilePicture: tamanna,
                postTime: "3 hrs",
                postStatus: Icons.public,
                postTitle: "Selvi❤️",
                postImage: tamannahPost,
                likeCount: "300K",
                commentCount: "56K",
                shareCount: "9K",
                footerAvatar: 'assets/avatars/thamanna.jpg'),
            thickDivider,
            PostCard(
                postProfileName: "Tovino Thomas",
                showBlueTick: true,
                postProfilePicture: tovino,
                postTime: "6 hrs",
                postStatus: Icons.public,
                postTitle: "Fashion Monger Celebrity Calendar 2024-2025!🔥",
                postImage: tovinoPost,
                likeCount: "560K",
                commentCount: "36K",
                shareCount: "4.5K",
                footerAvatar: 'assets/avatars/tovino.jpg'),
            thickDivider,
            PostCard(
                postProfileName: "Mohanlal",
                showBlueTick: true,
                postProfilePicture: mohanlal,
                postTime: "1 day",
                postStatus: Icons.public,
                postTitle: "Revisited this film after 24 years. It feels as if a Devadoothan's blessing touches every frame, adding extraordinary charm.\n\nCongratulations to the entire team.",
                postImage: mohanlalPost,
                likeCount: "1.2 M",
                commentCount: "450K",
                shareCount: "98K",
                footerAvatar: 'assets/avatars/mohanlal.jpg'),
            thickDivider,
            PostCard(
                postProfileName: "Fahadh Faasil",
                showBlueTick: true,
                postProfilePicture: fahad,
                postTime: "2 days",
                postStatus: Icons.public,
                postTitle: "Aavesham Running Successfully In Theatres Now.\n💥💥💥\nGet Tickets Here👇🏼\nhttps://in.bookmyshow.com/movies/aavesham/ET00386326 \nhttps://m.paytm.me/s_aavesham \n#Aavesham #ആവേശം #InTheatresNow",
                postImage: fahadPost,
                likeCount: "41K",
                commentCount: "2K",
                shareCount: "106",
                footerAvatar: 'assets/avatars/fahad.jpg'),
            thickDivider,
            SuggestionSection2(),
            thickDivider
            
          ],
        ),
      ),
    );
  }
}
