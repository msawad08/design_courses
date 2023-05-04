import 'dart:convert';

import 'package:design_course/models/course.dart';

import 'package:http/http.dart' as http;


class CourseRepository {
  final http.Client _client = http.Client();
  final String _baseUrl = 'https://example.com/api/courses';

  Future<List<Course>> getCourses() async {
    final response = await _client.get(Uri.parse(_baseUrl));
    if (response.statusCode == 200) {
      final List<dynamic> jsonList = json.decode(response.body);
      final List<Course> courses =
      jsonList.map((json) => Course.fromJson(json)).toList();
      return courses;
    } else {
      throw Exception('Failed to load courses');
    }
  }

  Future<List<Course>> searchCourses(String searchTerm) async {
    final courses = await getCourses();
    final filteredCourses = courses.where((course) =>
        course.name.toLowerCase().contains(searchTerm.toLowerCase()));
    return filteredCourses.toList();
  }
}