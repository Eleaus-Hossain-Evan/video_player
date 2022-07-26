import 'dart:convert';

import 'package:equatable/equatable.dart';

class SubCategoryModel extends Equatable {
  final String id;
  final String name;
  final bool featured;
  final String image;
  final String slug;
  final bool isDisable;
  final String category;

  const SubCategoryModel({
    required this.id,
    required this.name,
    required this.featured,
    required this.image,
    required this.slug,
    required this.isDisable,
    required this.category,
  });

  factory SubCategoryModel.init() => const SubCategoryModel(
        id: '',
        name: '',
        featured: false,
        image: '',
        slug: '',
        isDisable: false,
        category: '',
      );

  SubCategoryModel copyWith({
    String? id,
    String? name,
    bool? featured,
    String? image,
    String? slug,
    bool? isDisable,
    String? category,
  }) {
    return SubCategoryModel(
      id: id ?? this.id,
      name: name ?? this.name,
      featured: featured ?? this.featured,
      image: image ?? this.image,
      slug: slug ?? this.slug,
      isDisable: isDisable ?? this.isDisable,
      category: category ?? this.category,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'featured': featured,
      'image': image,
      'slug': slug,
      'isDisable': isDisable,
      'category': category,
    };
  }

  factory SubCategoryModel.fromMap(Map<String, dynamic> map) {
    return SubCategoryModel(
      id: (map['_id"'] ?? '') as String,
      name: (map['name'] ?? '') as String,
      featured: (map['featured'] ?? false) as bool,
      image: (map['image'] ?? '') as String,
      slug: (map['slug'] ?? '') as String,
      isDisable: (map['isDisable'] ?? false) as bool,
      category: (map['category'] ?? '') as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory SubCategoryModel.fromJson(String source) =>
      SubCategoryModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      id,
      name,
      featured,
      image,
      slug,
      isDisable,
      category,
    ];
  }
}
