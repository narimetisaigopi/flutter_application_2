import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  YoutubePlayerController youtubePlayerController = YoutubePlayerController(
      initialVideoId: "1xipg02Wu8s",
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          YoutubePlayer(
            controller: youtubePlayerController,
          ),
          YoutubePlayer(
            controller: youtubePlayerController,
          ),
          YoutubePlayer(
            controller: youtubePlayerController,
          ),
          YoutubePlayer(
            controller: youtubePlayerController,
          ),
        ],
      ),
    );
  }
}
