import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import '../model/property.dart';

class FavoriteProvider with ChangeNotifier {
  final List<Property> _favorites = [];

  List<Property> get favorites => _favorites;

  Future<void> initFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final data = prefs.getStringList('favorites') ?? [];
    _favorites.clear();
    _favorites.addAll(data.map((e) => Property.fromJson(jsonDecode(e))));
    notifyListeners();
  }

  Future<void> toggleFavorite(Property property) async {
    final prefs = await SharedPreferences.getInstance();
    final isFav = _favorites.any((e) => e.id == property.id);

    if (isFav) {
      _favorites.removeWhere((e) => e.id == property.id);
      await _removeFromApi(property.id);
    } else {
      _favorites.add(property);
      await _addToApi(property);
    }

    final favJsonList =
        _favorites.map((e) => jsonEncode(e.toJson())).toList();
    await prefs.setStringList('favorites', favJsonList);

    notifyListeners();
  }

  bool isFavorite(String id) {
    return _favorites.any((e) => e.id == id);
  }

  Future<void> _addToApi(Property property) async {
    await http.post(
      Uri.parse('https://example.com/api/favorites'),
      body: jsonEncode(property.toJson()),
      headers: {'Content-Type': 'application/json'},
    );
  }

  Future<void> _removeFromApi(String id) async {
    await http.delete(
      Uri.parse('https://example.com/api/favorites/$id'),
    );
  }
}
