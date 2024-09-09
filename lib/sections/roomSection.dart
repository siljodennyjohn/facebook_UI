// import 'package:facebook/assets.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  const RoomSection({super.key});

  Widget onlineAvatar({
    required String onlineAvatarImage,
    required bool displayStatus,
  }) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.asset(
            onlineAvatarImage,
            width: 50,
          ),
        ),
        displayStatus == true
            ? Positioned(
                bottom: 0,
                right: 1,
                child: Container(
                  width: 17,
                  height: 17,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 2, 204, 106),
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      )),
                ),
              )
            : Positioned(
                bottom: 0,
                right: 1,
                child: Container(
                  width: 17,
                  height: 17,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 175, 178, 176),
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      )),
                ),
              )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> avatarList = [
      createRoombutton,
      onlineAvatar(
          onlineAvatarImage: 'assets/avatars/dulquar.jpg', displayStatus: true),
      onlineAvatar(
          onlineAvatarImage: 'assets/avatars/mohanlal.jpg',
          displayStatus: true),
      onlineAvatar(
          onlineAvatarImage: 'assets/avatars/mamooty.jpg', displayStatus: true),
      onlineAvatar(
          onlineAvatarImage: 'assets/avatars/thamanna.jpg',
          displayStatus: true),
      onlineAvatar(
          onlineAvatarImage: 'assets/avatars/tovino.jpg', displayStatus: true),
      onlineAvatar(
          onlineAvatarImage: 'assets/avatars/fahad.jpg', displayStatus: true),
      onlineAvatar(
          onlineAvatarImage: 'assets/avatars/dulquar.jpg',
          displayStatus: false),
      onlineAvatar(
          onlineAvatarImage: 'assets/avatars/mohanlal.jpg',
          displayStatus: false),
      onlineAvatar(
          onlineAvatarImage: 'assets/avatars/mamooty.jpg',
          displayStatus: false),
      onlineAvatar(
          onlineAvatarImage: 'assets/avatars/thamanna.jpg',
          displayStatus: false),
      onlineAvatar(
          onlineAvatarImage: 'assets/avatars/tovino.jpg', displayStatus: false),
      onlineAvatar(
          onlineAvatarImage: 'assets/avatars/fahad.jpg', displayStatus: false),
    ];

    return Container(
      height: 70,
      child: ListView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.all(5),
          children: avatarList.map((item) {
            return Padding(
              padding: EdgeInsets.all(5),
              child: item,
            );
          }).toList()),
    );
  }
}

Widget createRoombutton = OutlinedButton.icon(
  onPressed: () {
    print("Create room clicked");
  },
  label: Text(
    "Create \nRoom",
    style: TextStyle(color: Colors.blue),
  ),
  icon: Icon(Icons.video_call),
  style: ButtonStyle(
    side: WidgetStatePropertyAll(
      BorderSide(
        width: 3,
        color: Colors.blue.shade100,
      ),
    ),
  ),
);
