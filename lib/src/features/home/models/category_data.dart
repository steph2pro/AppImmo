import 'package:flutter/material.dart';

class CategoryData {
  final String title;
  final Icon icon;

  CategoryData({required this.title, required this.icon});
}
final List<CategoryData> schoolCategoryDatas = [
  CategoryData(title: 'Mathématiques', icon: Icon(Icons.calculate)),
  CategoryData(title: 'Sciences', icon: Icon(Icons.science)),
  CategoryData(title: 'Histoire', icon: Icon(Icons.history_edu)),
  CategoryData(title: 'Géographie', icon: Icon(Icons.public)),
  CategoryData(title: 'Langues', icon: Icon(Icons.language)),
  CategoryData(title: 'Informatique', icon: Icon(Icons.computer)),
  CategoryData(title: 'Éducation physique', icon: Icon(Icons.sports_soccer)),
  CategoryData(title: 'Musique', icon: Icon(Icons.music_note)),
  CategoryData(title: 'Arts plastiques', icon: Icon(Icons.brush)),
  CategoryData(title: 'Vie scolaire', icon: Icon(Icons.school)),
];
