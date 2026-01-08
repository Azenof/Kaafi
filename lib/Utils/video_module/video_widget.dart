import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/Utils/exports/data_paths.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

import '/Utils/exports/data_paths.dart';


class VideoModule extends StatelessWidget {
  const VideoModule({
    super.key,
    required this.controller,
  });

  final VideoController controller;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        VideoPlayer(controller.videoPlayerController),
        Obx(() => controller.isLoading.value
            ? Center(child:CircularProgressIndicator())
            : Center(child:IconButton(
          onPressed: () => controller.playPause(),
          icon: Icon(
            controller.isPlaying.value
                ? Icons.pause
                : Icons.play_arrow,
            size: 50,
            color: Colors.white.withValues(alpha: 0.8),
          ),
        )),
        ),
      ],);
  }
}
