import 'dart:convert';

import 'package:design_course/models/course.dart';
import 'package:design_course/repositories/base_network_repository.dart';
import 'package:design_course/utils/network_status.dart';

import 'package:http/http.dart' as http;


class CategoryRepository extends BaseNetworkRepository {
  final http.Client _client = http.Client();
  final String _baseUrl = 'https://my-json-server.typicode.com/msawad08/design_courses/courses';
  List<String> categories = [];


  Future<void> getCategories() async {
    controller.add(NetworkStatus.loading);
    final response = await _client.get(Uri.parse(_baseUrl));
    if (response.statusCode == 200) {
      controller.add(NetworkStatus.loaded);
      final List<dynamic> jsonList = json.decode(response.body);
    final courses = jsonList.map((json) => Course.fromJson(json)).toList();
    categories = courses.map((course) => course.category).toSet().toList();
    } else {
      errorMessage = "Failed to load courses";
      controller.add(NetworkStatus.failed);
      // throw Exception('Failed to load courses');
    }
  }




}