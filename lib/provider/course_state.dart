// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:clean_api/clean_api.dart';
import 'package:equatable/equatable.dart';

import '../model/course_model.dart';

class CourseState extends Equatable {
  final bool loading;
  final String failure;
  final CourseModel course;

  const CourseState({
    required this.loading,
    required this.failure,
    required this.course,
  });

  factory CourseState.init() => CourseState(
        loading: false,
        failure: '',
        course: CourseModel.init(),
      );

  CourseState copyWith({
    bool? loading,
    String? failure,
    CourseModel? course,
  }) {
    return CourseState(
      loading: loading ?? this.loading,
      failure: failure ?? this.failure,
      course: course ?? this.course,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [loading, failure, course];
}
