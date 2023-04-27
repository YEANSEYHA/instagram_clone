import 'package:flutter/material.dart';
import 'package:instagram_clone/constants/instagram_list_constant.dart';
import 'package:instagram_clone/models/post_model.dart';
import 'package:video_player/video_player.dart';

class ReelPageView extends StatefulWidget {
  const ReelPageView({super.key});

  @override
  State<ReelPageView> createState() => _ReelPageViewState();
}

class _ReelPageViewState extends State<ReelPageView> {
  VideoPlayerController? _controller;
  Future<void>? _initializeVideoPlayerFuture;

  @override
  void initState() {
    // Make this url dynamic later
    _controller = VideoPlayerController.network(
        "https://storage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4");
    _initializeVideoPlayerFuture = _controller?.initialize();
    _controller?.setLooping(true);
    _controller?.setVolume(1.0);
    super.initState();
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (_controller!.value.isPlaying) {
              _controller!.pause();
            } else {
              _controller!.play();
            }
          });
        },
        child:
            Icon(_controller!.value.isPlaying ? Icons.pause : Icons.play_arrow),
      ),
    );
  }

  Widget _buildBody() {
    return _buildPageViewBuilder();
  }

  Widget _buildPageViewBuilder() {
    return PageView.builder(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        itemCount: postList.length,
        itemBuilder: (context, index) {
          return _buildVideoPlayer(postList[index]);
        });
  }

  Widget _buildPageItem(PostModel item) {
    return Image.network(item.image, fit: BoxFit.cover);
  }

  // change from image to video player
  Widget _buildVideoPlayer(PostModel item) {
    return Container(
        child: FutureBuilder(
      future: _initializeVideoPlayerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return AspectRatio(
            aspectRatio: _controller!.value.aspectRatio,
            child: VideoPlayer(_controller!),
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    ));
  }
}
