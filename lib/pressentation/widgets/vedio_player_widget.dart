import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    _controller = VideoPlayerController.networkUrl(
      Uri.parse(
        'https://vod-progressive.akamaized.net/exp=1693942573~acl=%2Fvimeo-prod-skyfire-std-us%2F01%2F4993%2F11%2F299968768%2F1145373722.mp4~hmac=cbf131e1bd6d74854051f155b59a4ef0b9ba511a20b09a7e61983441ffceec55/vimeo-prod-skyfire-std-us/01/4993/11/299968768/1145373722.mp4'
      ),
    );
    _initVideoPlayer = _controller.initialize().then((_) {
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
        future: _initVideoPlayer,
        builder: (context, snapShot) {
          if (snapShot.connectionState == ConnectionState.done) {
            return AspectRatio(
              aspectRatio: _controller.value.aspectRatio.h/.8,
              child: Container(
                height:150.h ,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(120.w),
                      bottomRight: Radius.circular(120.w),
                    ),
                  ),
                  child: VideoPlayer(_controller)),
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        });
  }
}
