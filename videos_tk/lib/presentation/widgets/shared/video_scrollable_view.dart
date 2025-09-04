import 'package:flutter/material.dart';
import 'package:videos_tk/domain/entities/video_post.dart';
import 'package:videos_tk/presentation/widgets/shared/video_button.dart';
import 'package:videos_tk/presentation/widgets/video/fullscreen_player.dart';

class VideoScrollableView extends StatelessWidget {
  final List<VideoPost> videos;

  const VideoScrollableView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      // children: [
      //   Container(color: Colors.red),
      //   Container(color: Colors.blue),
      //   Container(color: Colors.teal),
      // ],
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final videoPost = videos[index];
        return Stack(
          children: [
            // Video Player + Gradient
            // FullScreenPlayer( video: videoPost),
            SizedBox.expand(
              child: FullScreenPlayer(
                caption: videoPost.caption,
                videoUrl: videoPost.videoUrl,
              ),
            ),

            // Botones
            Positioned(
              bottom: 40,
              right: 20,
              child: VideoButton(video: videoPost),
            ),
          ],
        );
      },
    );
  }
}
