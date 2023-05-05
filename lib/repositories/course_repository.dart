import 'dart:convert';

import 'package:design_course/blocs/courses/course_state.dart';
import 'package:design_course/models/course.dart';
import 'package:design_course/repositories/base_network_repository.dart';
import 'package:design_course/utils/network_status.dart';

import 'package:http/http.dart' as http;


class CourseRepository extends BaseNetworkRepository {
  final http.Client _client = http.Client();
  final String _baseUrl = 'https://my-json-server.typicode.com/msawad08/design_courses/courses';
  List<Course> courses = [];


  Future<List<Course>?> fetchCourses() async{
    controller.add(NetworkStatus.loading);
    final response = await _client.get(Uri.parse(_baseUrl));
    if (response.statusCode == 200) {
      final List<dynamic> jsonList = json.decode(response.body);
      return jsonList.map((json) => Course.fromJson(json)).toList();
    } else {
      errorMessage = "Failed to load courses";
      controller.add(NetworkStatus.failed);
      return null;
      // throw Exception('Failed to load courses');
    }

  }

  Future<void> getCourses() async {
    final resp = await  fetchCourses();
    if(resp != null){
        courses = resp;
        controller.add(NetworkStatus.loaded);
    }
  }

  Future<void> searchCourses(String searchTerm) async {
    final resp = await  fetchCourses();
    if(resp != null){
      final filteredCourses = resp.where((course) =>
          course.name.toLowerCase().contains(searchTerm.toLowerCase()));
      courses = filteredCourses.toList();
      controller.add(NetworkStatus.loaded);
    }


  }

  Future<void> getPopularCourses(String searchTerm) async {
    final resp = await  fetchCourses();
    if(resp != null){
      final filteredCourses = courses.where((course) =>
      course.rating <= 4.5);
      courses = filteredCourses.toList();
      controller.add(NetworkStatus.loaded);
    }
  }

  Future<void> getCoursesOfCategory(String category) async {

    final resp = await  fetchCourses();
    if(resp != null){
      final filteredCourses = resp.where((course) =>
      course.category == category);
      courses = filteredCourses.toList();
      controller.add(NetworkStatus.loaded);

    }
  }


}