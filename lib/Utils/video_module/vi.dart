import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/Utils/exports/data_paths.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/Utils/exports/data_paths.dart';


class VideoControls extends StatelessWidget {
  final VideoController controller;

  const VideoControls({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Obx(() => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Icon(controller.isMuted.value ? Icons.volume_off : Icons.volume_up),
          onPressed: controller.toggleMute,
        ),

        IconButton(
          icon: Icon(controller.isPlaying.value ? Icons.pause : Icons.play_arrow),
          onPressed: controller.playPause,
        ),

        // Progress bar
        Expanded(
          child: Slider(
            value: controller.currentPosition.value.inMilliseconds.toDouble(),
            min: 0,
            max: controller.totalDuration.value.inMilliseconds.toDouble(),
            onChanged: (value) {
              controller.seekTo(Duration(milliseconds: value.toInt()));
            },
          ),
        ),

        // Time display
        Text(
          '${_formatDuration(controller.currentPosition.value)} / '
              '${_formatDuration(controller.totalDuration.value)}',
        ),
      ],
    ));
  }

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = duration.inHours;
    final minutes = duration.inMinutes.remainder(60);
    final seconds = duration.inSeconds.remainder(60);

    if (hours > 0) {
      return '$hours:${twoDigits(minutes)}:${twoDigits(seconds)}';
    }
    return '${twoDigits(minutes)}:${twoDigits(seconds)}';
  }
}