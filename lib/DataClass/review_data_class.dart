import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/Utils/exports/data_paths.dart';


class Review {
  final String reviewId;
  final String courseId;
  final String studentId;
  final int rating;
  final String comment;
  final DateTime date;

  Review({
    required this.reviewId,
    required this.courseId,
    required this.studentId,
    required this.rating,
    required this.comment,
    required this.date,
  });

  factory Review.fromJson(Map<String, dynamic> json) {
    return Review(
      reviewId: json['reviewId'],
      courseId: json['courseId'],
      studentId: json['studentId'],
      rating: json['rating'],
      comment: json['comment'],
      date: DateTime.parse(json['date']),
    );
  }
}
