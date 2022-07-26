// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

class InstructorModel extends Equatable {
  final String id;
  final String firstName;
  final String lastName;
  final String email;
  final String password;
  final String thumbnail;
  final String phone;
  final List<dynamic> courses;
  final bool isApproved;
  final bool isBlocked;
  final int totalSellTk;
  final int totalGetTk;
  final int totalPayTk;
  final int commission;
  final String roles;
  final String university;
  final String department;
  final String profileImage;
  final String coverImage;
  final String gender;
  final DateTime dateOfBirth;
  final int totalStudents;
  final int totalCourseHour;
  final List<dynamic> payHistory;

  const InstructorModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
    required this.thumbnail,
    required this.phone,
    required this.courses,
    required this.isApproved,
    required this.isBlocked,
    required this.totalSellTk,
    required this.totalGetTk,
    required this.totalPayTk,
    required this.commission,
    required this.roles,
    required this.university,
    required this.department,
    required this.profileImage,
    required this.coverImage,
    required this.gender,
    required this.dateOfBirth,
    required this.totalStudents,
    required this.totalCourseHour,
    required this.payHistory,
  });

  factory InstructorModel.init() => InstructorModel(
        id: '',
        firstName: '',
        lastName: '',
        email: '',
        password: '',
        thumbnail: '',
        phone: '',
        courses: const [],
        isApproved: false,
        isBlocked: false,
        totalSellTk: 0,
        totalGetTk: 0,
        totalPayTk: 0,
        commission: 0,
        roles: '',
        university: '',
        department: '',
        profileImage: '',
        coverImage: '',
        gender: '',
        dateOfBirth: DateTime.now(),
        totalStudents: 0,
        totalCourseHour: 0,
        payHistory: const [],
      );

  InstructorModel copyWith({
    String? id,
    String? firstName,
    String? lastName,
    String? email,
    String? password,
    String? thumbnail,
    String? phone,
    List<dynamic>? courses,
    bool? isApproved,
    bool? isBlocked,
    int? totalSellTk,
    int? totalGetTk,
    int? totalPayTk,
    int? commission,
    String? roles,
    String? university,
    String? department,
    String? profileImage,
    String? coverImage,
    String? gender,
    DateTime? dateOfBirth,
    int? totalStudents,
    int? totalCourseHour,
    List<dynamic>? payHistory,
  }) {
    return InstructorModel(
      id: id ?? this.id,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      password: password ?? this.password,
      thumbnail: thumbnail ?? this.thumbnail,
      phone: phone ?? this.phone,
      courses: courses ?? this.courses,
      isApproved: isApproved ?? this.isApproved,
      isBlocked: isBlocked ?? this.isBlocked,
      totalSellTk: totalSellTk ?? this.totalSellTk,
      totalGetTk: totalGetTk ?? this.totalGetTk,
      totalPayTk: totalPayTk ?? this.totalPayTk,
      commission: commission ?? this.commission,
      roles: roles ?? this.roles,
      university: university ?? this.university,
      department: department ?? this.department,
      profileImage: profileImage ?? this.profileImage,
      coverImage: coverImage ?? this.coverImage,
      gender: gender ?? this.gender,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      totalStudents: totalStudents ?? this.totalStudents,
      totalCourseHour: totalCourseHour ?? this.totalCourseHour,
      payHistory: payHistory ?? this.payHistory,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'password': password,
      'thumbnail': thumbnail,
      'phone': phone,
      'courses': courses,
      'isApproved': isApproved,
      'isBlocked': isBlocked,
      'totalSellTk': totalSellTk,
      'totalGetTk': totalGetTk,
      'totalPayTk': totalPayTk,
      'commission': commission,
      'roles': roles,
      'university': university,
      'department': department,
      'profileImage': profileImage,
      'coverImage': coverImage,
      'gender': gender,
      'dateOfBirth': dateOfBirth.millisecondsSinceEpoch,
      'totalStudents': totalStudents,
      'totalCourseHour': totalCourseHour,
      'payHistory': payHistory,
    };
  }

  factory InstructorModel.fromMap(Map<String, dynamic> map) {
    return InstructorModel(
      id: (map['_id'] ?? '') as String,
      firstName: (map['firstName'] ?? '') as String,
      lastName: (map['lastName'] ?? '') as String,
      email: (map['email'] ?? '') as String,
      password: (map['password'] ?? '') as String,
      thumbnail: (map['thumbnail'] ?? '') as String,
      phone: (map['phone'] ?? '') as String,
      courses: List<dynamic>.from(
          (map['courses'] ?? const <dynamic>[]) as List<dynamic>),
      isApproved: (map['isApproved'] ?? false) as bool,
      isBlocked: (map['isBlocked'] ?? false) as bool,
      totalSellTk: (map['totalSellTk'] ?? 0) as int,
      totalGetTk: (map['totalGetTk'] ?? 0) as int,
      totalPayTk: (map['totalPayTk'] ?? 0) as int,
      commission: (map['commission'] ?? 0) as int,
      roles: (map['roles'] ?? '') as String,
      university: (map['university'] ?? '') as String,
      department: (map['department'] ?? '') as String,
      profileImage: (map['profileImage'] ?? '') as String,
      coverImage: (map['coverImage'] ?? '') as String,
      gender: (map['gender'] ?? '') as String,
      dateOfBirth: DateTime.parse((map['dateOfBirth'] ?? '')),
      totalStudents: (map['totalStudents'] ?? 0) as int,
      totalCourseHour: (map['totalCourseHour'] ?? 0) as int,
      payHistory: List<dynamic>.from(
          (map['payHistory'] ?? const <dynamic>[]) as List<dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory InstructorModel.fromJson(String source) =>
      InstructorModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      id,
      firstName,
      lastName,
      email,
      password,
      thumbnail,
      phone,
      courses,
      isApproved,
      isBlocked,
      totalSellTk,
      totalGetTk,
      totalPayTk,
      commission,
      roles,
      university,
      department,
      profileImage,
      coverImage,
      gender,
      dateOfBirth,
      totalStudents,
      totalCourseHour,
      payHistory,
    ];
  }
}
