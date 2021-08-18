import 'package:flutter/material.dart';

class Anime {
  final String id;
  final String categories;
  final String title;
  final List<Map<String, String>> episode;
  final List<Map<String, String>> tokoh;
  final String pengarang;
  final int ratingMyAnimeList;
  final int jmlEpisode;
  final String imageUrl;
  final String sinopsis;
  final bool isSubIndo;
  final bool isOngoing;
  final bool isSU;


  const Anime({
    required this.id,
    required this.categories,
    required this.title,
    required this.episode,
    required this.tokoh,
    required this.pengarang,
    required this.ratingMyAnimeList,
    required this.jmlEpisode,
    required this.imageUrl,
    required this.sinopsis,
    required this.isSubIndo,
    required this.isOngoing,
    required this.isSU,
  });
}
