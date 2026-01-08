import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/Utils/exports/data_paths.dart';

// controllers/video_controller.dart
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

import '/Utils/exports/data_paths.dart';

class VideoController extends GetxController {
  late VideoPlayerController videoPlayerController;
  final RxBool isPlaying = false.obs;
  final RxBool isLoading = true.obs;
  final RxDouble playbackSpeed = 1.0.obs;
  final RxBool isMuted = false.obs;
  final Rx<Duration> currentPosition = Duration.zero.obs;
  final Rx<Duration> totalDuration = Duration.zero.obs;
  final String url;

  VideoController({required this.url});
  @override
  void onInit() {
    super.onInit();
    initializePlayer();
  }

  Future<void> initializePlayer() async {
    isLoading.value = true;

    videoPlayerController = VideoPlayerController.networkUrl(
      Uri.parse(url),
    );

    await videoPlayerController.initialize();

    // Listen to video updates
    videoPlayerController.addListener(() {
      currentPosition.value = videoPlayerController.value.position;
      totalDuration.value = videoPlayerController.value.duration;
      isPlaying.value = videoPlayerController.value.isPlaying;
    });

    isLoading.value = false;
    update();
  }

  void playPause() {
    if (videoPlayerController.value.isPlaying) {
      videoPlayerController.pause();
    } else {
      videoPlayerController.play();
    }
    isPlaying.value = videoPlayerController.value.isPlaying;
  }

  void seekTo(Duration position) {
    videoPlayerController.seekTo(position);
  }

  void changeSpeed(double speed) {
    playbackSpeed.value = speed;
    videoPlayerController.setPlaybackSpeed(speed);
  }

  void toggleMute() {
    isMuted.value = !isMuted.value;
    videoPlayerController.setVolume(isMuted.value ? 0.0 : 1.0);
  }

  @override
  void onClose() {
    videoPlayerController.dispose();
    super.onClose();
  }
}