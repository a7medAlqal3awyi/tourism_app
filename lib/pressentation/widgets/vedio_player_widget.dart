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
        'https://vod-progressive.akamaized.net/exp=1693594578~acl=%2Fvimeo-prod-skyfire-std-us%2F01%2F788%2F13%2F328940133%2F1290021545.mp4~hmac=ce8ee797e8d723987ace021b6bf1cd54a75313a92776d9416cb5af3167d624f3/vimeo-prod-skyfire-std-us/01/788/13/328940133/1290021545.mp4?filename=file.mp4'
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
