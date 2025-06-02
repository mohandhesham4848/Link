import 'package:flutter/material.dart';

class NewsModel {
  final ImageProvider image;
  final String title;
  final String description;

  NewsModel({
    required this.image,
    required this.title,
    required this.description,
  });
}
