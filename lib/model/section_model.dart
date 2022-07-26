import 'dart:convert';

import 'package:equatable/equatable.dart';

class SectionModel extends Equatable {
  final String fileType;
  final String fileTitle;
  final String fileUrl;
  final int fileSize;
  final String id;

  const SectionModel({
    required this.fileType,
    required this.fileTitle,
    required this.fileUrl,
    required this.fileSize,
    required this.id,
  });

  factory SectionModel.init() => const SectionModel(
        fileType: '',
        fileTitle: '',
        fileUrl: '',
        fileSize: 0,
        id: '',
      );

  SectionModel copyWith({
    String? fileType,
    String? fileTitle,
    String? fileUrl,
    int? fileSize,
    String? id,
  }) {
    return SectionModel(
      fileType: fileType ?? this.fileType,
      fileTitle: fileTitle ?? this.fileTitle,
      fileUrl: fileUrl ?? this.fileUrl,
      fileSize: fileSize ?? this.fileSize,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileType': fileType,
      'fileTitle': fileTitle,
      'fileUrl': fileUrl,
      'fileSize': fileSize,
      'id': id,
    };
  }

  factory SectionModel.fromMap(Map<String, dynamic> map) {
    return SectionModel(
      fileType: (map['fileType'] ?? '') as String,
      fileTitle: (map['fileTitle'] ?? '') as String,
      fileUrl: (map['fileUrl'] ?? '') as String,
      fileSize: (map['fileSize'] ?? 0) as int,
      id: (map['_id"'] ?? '') as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory SectionModel.fromJson(String source) =>
      SectionModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      fileType,
      fileTitle,
      fileUrl,
      fileSize,
      id,
    ];
  }
}
