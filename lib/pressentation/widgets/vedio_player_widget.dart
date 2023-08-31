import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoApp extends StatefulWidget {
  const VideoApp({super.key});

  @override
  _VideoAppState createState() => _VideoAppState();
}

class _VideoAppState extends State<VideoApp> {
  late VideoPlayerController _controller;
  late Future<void> _initVideoPlayer;

  @override
  void initState() {
    _controller = VideoPlayerController.networkUrl(Uri.parse(
        'https://vod-progressive.akamaized.net/exp=1693529900~acl=%2Fvimeo-prod-skyfire-std-us%2F01%2F1952%2F15%2F384761655%2F1618226594.mp4~hmac=0829badeadd8f39e2136941d1662d29363aeb1be57e1bfc8042cb701cb29068b/vimeo-prod-skyfire-std-us/01/1952/15/384761655/1618226594.mp4'),);
    _initVideoPlayer=_controller.initialize().then((_) {
    setState(() {});
    _controller.play();
    _controller.setLooping(true);
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future:_initVideoPlayer,
        builder: (context, snapShot) {
          if (snapShot.connectionState == ConnectionState.done) {
            return AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            );
          } else {
            return const Center(
                child: CircularProgressIndicator()
            );
          }
        }
    );
  }


}
