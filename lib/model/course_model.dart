// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'faq.dart';
import 'instructor_model.dart';
import 'lecture_model.dart';
import 'sub_category_model.dart';

class CourseModel extends Equatable {
  final String id;
  final String name;
  final String description;
  final List<String> tags;
  final List<FaqModel> faq;
  final InstructorModel instructor;
  final String slug;
  final String thumbnail;
  final SubCategoryModel subCategory;
  final String introClip;
  final int price;
  final int discountAmount;
  final int rating;
  final List<dynamic> totalEnrolled;
  final int totalCourseHour;
  final int totalNote;
  final int totalQuiz;
  final int totalVideo;
  final List<LectureModel> lectures;
  final bool isApprove;
  final bool isFeatured;
  final bool isFree;
  final bool isDisabledInstructor;
  final bool isDisabledAdmin;
  final List<dynamic> ratingDetails;

  const CourseModel({
    required this.id,
    required this.name,
    required this.description,
    required this.tags,
    required this.faq,
    required this.instructor,
    required this.slug,
    required this.thumbnail,
    required this.subCategory,
    required this.introClip,
    required this.price,
    required this.discountAmount,
    required this.rating,
    required this.totalEnrolled,
    required this.totalCourseHour,
    required this.totalNote,
    required this.totalQuiz,
    required this.totalVideo,
    required this.lectures,
    required this.isApprove,
    required this.isFeatured,
    required this.isFree,
    required this.isDisabledInstructor,
    required this.isDisabledAdmin,
    required this.ratingDetails,
  });

  factory CourseModel.init() => CourseModel(
        id: '',
        name: '',
        description: '',
        tags: const [],
        faq: const <FaqModel>[],
        instructor: InstructorModel.init(),
        slug: '',
        thumbnail: '',
        subCategory: SubCategoryModel.init(),
        introClip: '',
        price: 0,
        discountAmount: 0,
        rating: 0,
        totalEnrolled: const [],
        totalCourseHour: 0,
        totalNote: 0,
        totalQuiz: 0,
        totalVideo: 0,
        lectures: const <LectureModel>[],
        isApprove: false,
        isFeatured: false,
        isFree: false,
        isDisabledInstructor: false,
        isDisabledAdmin: false,
        ratingDetails: const [],
      );

  CourseModel copyWith({
    String? id,
    String? name,
    String? description,
    List<String>? tags,
    List<FaqModel>? faq,
    InstructorModel? instructor,
    String? slug,
    String? thumbnail,
    SubCategoryModel? subCategory,
    String? introClip,
    int? price,
    int? discountAmount,
    int? rating,
    List<dynamic>? totalEnrolled,
    int? totalCourseHour,
    int? totalNote,
    int? totalQuiz,
    int? totalVideo,
    List<LectureModel>? lectures,
    bool? isApprove,
    bool? isFeatured,
    bool? isFree,
    bool? isDisabledInstructor,
    bool? isDisabledAdmin,
    List<dynamic>? ratingDetails,
  }) {
    return CourseModel(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      tags: tags ?? this.tags,
      faq: faq ?? this.faq,
      instructor: instructor ?? this.instructor,
      slug: slug ?? this.slug,
      thumbnail: thumbnail ?? this.thumbnail,
      subCategory: subCategory ?? this.subCategory,
      introClip: introClip ?? this.introClip,
      price: price ?? this.price,
      discountAmount: discountAmount ?? this.discountAmount,
      rating: rating ?? this.rating,
      totalEnrolled: totalEnrolled ?? this.totalEnrolled,
      totalCourseHour: totalCourseHour ?? this.totalCourseHour,
      totalNote: totalNote ?? this.totalNote,
      totalQuiz: totalQuiz ?? this.totalQuiz,
      totalVideo: totalVideo ?? this.totalVideo,
      lectures: lectures ?? this.lectures,
      isApprove: isApprove ?? this.isApprove,
      isFeatured: isFeatured ?? this.isFeatured,
      isFree: isFree ?? this.isFree,
      isDisabledInstructor: isDisabledInstructor ?? this.isDisabledInstructor,
      isDisabledAdmin: isDisabledAdmin ?? this.isDisabledAdmin,
      ratingDetails: ratingDetails ?? this.ratingDetails,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'description': description,
      'tags': tags,
      'faq': faq.map((x) => x.toMap()).toList(),
      'instructor': instructor.toMap(),
      'slug': slug,
      'thumbnail': thumbnail,
      'subCategory': subCategory.toMap(),
      'introClip': introClip,
      'price': price,
      'discountAmount': discountAmount,
      'rating': rating,
      'totalEnrolled': totalEnrolled,
      'totalCourseHour': totalCourseHour,
      'totalNote': totalNote,
      'totalQuiz': totalQuiz,
      'totalVideo': totalVideo,
      'lectures': lectures.map((x) => x.toMap()).toList(),
      'isApprove': isApprove,
      'isFeatured': isFeatured,
      'isFree': isFree,
      'isDisabledInstructor': isDisabledInstructor,
      'isDisabledAdmin': isDisabledAdmin,
      'ratingDetails': ratingDetails,
    };
  }

  factory CourseModel.fromMap(Map<String, dynamic> map) {
    return CourseModel(
      id: (map['_id'] ?? '') as String,
      name: (map['name'] ?? '') as String,
      description: (map['description'] ?? '') as String,
      slug: (map['slug'] ?? '') as String,
      thumbnail: (map['thumbnail'] ?? '') as String,
      introClip: (map['introClip'] ?? '') as String,
      price: (map['price'] ?? 0) as int,
      discountAmount: (map['discountAmount'] ?? 0) as int,
      rating: (map['rating'] ?? 0) as int,
      totalEnrolled: List<dynamic>.from(
          (map['totalEnrolled'] ?? const <dynamic>[]) as List<dynamic>),
      totalCourseHour: (map['totalCourseHour'] ?? 0) as int,
      totalNote: (map['totalNote'] ?? 0) as int,
      totalQuiz: (map['totalQuiz'] ?? 0) as int,
      totalVideo: (map['totalVideo'] ?? 0) as int,
      isApprove: (map['isApprove'] ?? false) as bool,
      isFeatured: (map['isFeatured'] ?? false) as bool,
      isFree: (map['isFree'] ?? false) as bool,
      isDisabledInstructor: (map['isDisabledInstructor'] ?? false) as bool,
      isDisabledAdmin: (map['isDisabledAdmin'] ?? false) as bool,
      ratingDetails: List<dynamic>.from(
          (map['ratingDetails'] ?? const <dynamic>[]) as List<dynamic>),
      faq: [],
      instructor: InstructorModel.init(),
      lectures: [],
      subCategory: SubCategoryModel.init(),
      tags: [],
    );
  }

  String toJson() => json.encode(toMap());

  factory CourseModel.fromJson(String source) =>
      CourseModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      id,
      name,
      description,
      tags,
      faq,
      instructor,
      slug,
      thumbnail,
      subCategory,
      introClip,
      price,
      discountAmount,
      rating,
      totalEnrolled,
      totalCourseHour,
      totalNote,
      totalQuiz,
      totalVideo,
      lectures,
      isApprove,
      isFeatured,
      isFree,
      isDisabledInstructor,
      isDisabledAdmin,
      ratingDetails,
    ];
  }
}
