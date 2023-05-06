import 'dart:convert';

import 'package:design_course/blocs/courses/course_state.dart';
import 'package:design_course/models/course.dart';
import 'package:design_course/repositories/base_network_repository.dart';
import 'package:design_course/utils/network_status.dart';

import 'package:http/http.dart' as http;

class CourseRepository extends BaseNetworkRepository {
  final http.Client _client = http.Client();
  final String _baseUrl =
      'https://my-json-server.typicode.com/msawad08/design_courses/courses';
  List<Course> courses = [];

  Future<List<Course>?> fetchCourses() async {
    try{
      controller.add(NetworkStatus.loading);
      final response = await _client.get(Uri.parse(_baseUrl));
      if (response.statusCode == 200) {
        final List<dynamic> jsonList = json.decode(response.body);
        return jsonList.map((json) => Course.fromJson(json)).toList();
      } else {
        errorMessage = "Failed to load courses";
        controller.add(NetworkStatus.failed);
        // throw Exception('Failed to load courses');
      }
    }catch(error){
      errorMessage = "Failed to load courses";
      controller.add(NetworkStatus.failed);
    }
    return null;

  }

  Future<void> getCourses() async {
    final resp = await fetchCourses();
    if (resp != null) {
      courses = resp;
      controller.add(NetworkStatus.loaded);
    }
  }

  Future<void> searchCourses(String searchTerm) async {
    final resp = await fetchCourses();
    if (resp != null) {
      final filteredCourses = resp.where((course) =>
          course.name.toLowerCase().contains(searchTerm.toLowerCase()));
      courses = filteredCourses.toList();
      controller.add(NetworkStatus.loaded);
    }
  }

  Future<void> getPopularCourses() async {
    final resp = await fetchCourses();
    if (resp != null) {
      final filteredCourses = resp.where((course) => course.rating >= 3);
      courses = filteredCourses.toList();
      courses.sort((a, b) => ((b.rating - a.rating) * 100).toInt());
      controller.add(NetworkStatus.loaded);
    }
  }

  Future<void> getCoursesOfCategory(String category) async {
    final resp = await fetchCourses();
    if (resp != null) {
      final filteredCourses =
          resp.where((course) => course.category == category);
      courses = filteredCourses.toList();
      controller.add(NetworkStatus.loaded);
    }
  }

  Future<void> getCourseById(int id) async {
    try{
      controller.add(NetworkStatus.loading);
      final response = await _client.get(Uri.parse("$_baseUrl/$id"));
      print(response.statusCode);
      if (response.statusCode !=  200 && response.statusCode !=  404) {
        errorMessage = "Failed to load courses";
        controller.add(NetworkStatus.failed);
        return;
      }
      final jsonResp = json.decode(response.body);
      if(jsonResp.isEmpty) {
        errorMessage = "Course Not Found";
        controller.add(NetworkStatus.failed);
        return;
      }
      courses = [Course.fromJson(jsonResp)];
      controller.add(NetworkStatus.loaded);
    }catch(error){
        errorMessage = "Failed to load courses";
        controller.add(NetworkStatus.failed);
    }

  }
}
