import 'package:facebook/widgets/storyCard.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  const StorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            labelText: "Add your Story",
            story: 'assets/avatars/prithviraj.jpg',
            avatarStory: 'assets/avatars/prithviraj.jpg',
            createStoryStatus: true,
          ),
          StoryCard(
            labelText: "Mohanlal",
            story: 'assets/story/mohanlal.jpg',
            avatarStory: 'assets/avatars/mohanlal.jpg',
            celebrityStatus: true,
          ),
          StoryCard(
            labelText: "Mammooty",
            story: 'assets/story/mamooty.jpg',
            avatarStory: 'assets/avatars/mamooty.jpg',
            celebrityStatus: true,
          ),
          StoryCard(
            labelText: "Tamanna",
            story: 'assets/story/tamanna.jpg',
            avatarStory: 'assets/avatars/thamanna.jpg',
            celebrityStatus: true,
          ),
          StoryCard(
            labelText: "Tovino Thomas",
            story: 'assets/story/tovino.jpg',
            avatarStory: 'assets/avatars/tovino.jpg',
            celebrityStatus: true,
          ),
          StoryCard(
            labelText: "Dulquer Salman",
            story: 'assets/story/dulquer.jpg',
            avatarStory: 'assets/avatars/dulquar.jpg',
            celebrityStatus: true,
          ),
          StoryCard(
            labelText: "Fahad Fassil",
            story: 'assets/story/fahad.jpg',
            avatarStory: 'assets/avatars/fahad.jpg',
            celebrityStatus: true,
          ),
        ],
      ),
    );
  }
}
