import 'dart:convert';

import 'package:flutter_easylogger/flutter_logger.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../model/course_model.dart';
import 'course_state.dart';
import 'package:http/http.dart' as http;

final courseProvider =
    StateNotifierProvider<CourseNotifier, CourseState>((ref) {
  return CourseNotifier();
});

class CourseNotifier extends StateNotifier<CourseState> {
  final client = http.Client();

  CourseNotifier() : super(CourseState.init());

  Future<void> fetchSingleCourse(String id) async {
    state = state.copyWith(loading: true);

    try {
      final response = await client.get(
        Uri.parse(
            'https://api-lms.b2gsoft.xyz/api/v1/course/62de33fb8f20ef920e661db1'),
      );

      Logger.i(response.toString());
      if (response.statusCode == 200) {
        final result = jsonDecode(response.body);
        Logger.i('result: $result');
        final course = CourseModel.fromMap(result['data']);
        state = state.copyWith(course: course, loading: false);
      } else {
        state = state.copyWith(failure: response.body, loading: false);
      }
    } on Exception catch (e) {
      Logger.e(e.toString());
      state.copyWith(failure: e.toString(), loading: false);
    }
  }
}
