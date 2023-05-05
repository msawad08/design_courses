import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'course.freezed.dart';
part 'course.g.dart';

@freezed
class Course with _$Course {
  const factory Course({
    required String name,
    required String description,
    required double rating,
    required String time,
    required int seatsAvailable,
    required String price,
    required int noOfClasses,
    required String category,
  }) = _Course;

  factory Course.fromJson(Map<String, Object?> json)
  => _$CourseFromJson(json);
}