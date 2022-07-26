// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'section_model.dart';

class LectureModel extends Equatable {
  final String id;
  final String sectionTitle;
  final List<SectionModel> sections;

  const LectureModel({
    required this.id,
    required this.sectionTitle,
    required this.sections,
  });

  factory LectureModel.init() => const LectureModel(
        id: '',
        sectionTitle: '',
        sections: <SectionModel>[],
      );

  LectureModel copyWith({
    String? id,
    String? sectionTitle,
    List<SectionModel>? sections,
  }) {
    return LectureModel(
      id: id ?? this.id,
      sectionTitle: sectionTitle ?? this.sectionTitle,
      sections: sections ?? this.sections,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'sectionTitle': sectionTitle,
      'sections': sections.map((x) => x.toMap()).toList(),
    };
  }

  factory LectureModel.fromMap(Map<String, dynamic> map) {
    return LectureModel(
      id: (map['_id'] ?? '') as String,
      sectionTitle: (map['sectionTitle'] ?? '') as String,
      sections: List<SectionModel>.from(
        (map['sections'] as List<int>).map<SectionModel>(
          (x) => SectionModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory LectureModel.fromJson(String source) =>
      LectureModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [id, sectionTitle, sections];
}
