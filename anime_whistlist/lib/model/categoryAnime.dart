import 'package:flutter/material.dart';

class CategoryAnime {
  final String id;
  final String title;
  final Color color;
  final String imageUrl;
  final List<int> posisi;

  const CategoryAnime({
    required this.id,
    required this.title,
    required this.color,
    required this.imageUrl,
    required this.posisi,
  });
}
