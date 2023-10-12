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
        'https://player.vimeo.com/external/436231255.sd.mp4?s=42959781cbf92660b0bd14129f1bb00426863d5f&profile_id=164&oauth2_token_id=57447761',
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
              aspectRatio: _controller.value.aspectRatio.h / .8,
              child: Container(
                  height: 150.h,
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
