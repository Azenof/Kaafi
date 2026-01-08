import '/exports/data_paths.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Forum {
  final String forumId;
  final String courseId;
  final String topic;
  final String moderatorId;

  Forum({
    required this.forumId,
    required this.courseId,
    required this.topic,
    required this.moderatorId,
  });

  factory Forum.fromJson(Map<String, dynamic> json) {
    return Forum(
      forumId: json['forumId'],
      courseId: json['courseId'],
      topic: json['topic'],
      moderatorId: json['moderatorId'],
    );
  }
}
