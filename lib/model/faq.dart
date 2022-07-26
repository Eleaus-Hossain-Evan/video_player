// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

class FaqModel extends Equatable {
  final String question;
  final String answer;
  final String id;

  const FaqModel({
    required this.question,
    required this.answer,
    required this.id,
  });

  factory FaqModel.init() => const FaqModel(question: '', answer: '', id: '');

  FaqModel copyWith({
    String? question,
    String? answer,
    String? id,
  }) {
    return FaqModel(
      question: question ?? this.question,
      answer: answer ?? this.answer,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'question': question,
      'answer': answer,
      'id': id,
    };
  }

  factory FaqModel.fromMap(Map<String, dynamic> map) {
    return FaqModel(
      question: (map['question'] ?? '') as String,
      answer: (map['answer'] ?? '') as String,
      id: (map['_id'] ?? '') as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory FaqModel.fromJson(String source) =>
      FaqModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [question, answer, id];
}