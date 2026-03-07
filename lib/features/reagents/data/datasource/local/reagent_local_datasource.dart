import 'dart:convert';
import 'dart:developer' as developer show log;

import 'package:flutter/services.dart';
import 'package:ss14chemtool/features/recipe/data/model/reagent_model.dart';

abstract class ReagentLocalDatasource {
  Future<List<Reagent>> getReagents(int offset, String? searchQuery);
  Future<Reagent?> getReagentById(String id);
}

class ReagentsLocalDatasourceImpl implements ReagentLocalDatasource {
  final String assetPath;

  ReagentsLocalDatasourceImpl({this.assetPath = 'assets/recipe/medicine.json'});

  static const int pageSize = 25;

  @override
  Future<List<Reagent>> getReagents(int offset, String? searchQuery) async {
    try {
      developer.log("search Query $searchQuery");
      final jsonString = await rootBundle.loadString(assetPath);
      final Map<String, dynamic> jsonMap = json.decode(jsonString);

      final reagentsJson = jsonMap['reagents'] as List<dynamic>? ?? [];
      var reagents = reagentsJson
          .map((e) => Reagent.fromJson(e as Map<String, dynamic>))
          .toList();

      // Sort alphabetically by name
      reagents.sort(
        (a, b) => a.name.toLowerCase().compareTo(b.name.toLowerCase()),
      );

      // Filter by search query if provided
      if (searchQuery != null && searchQuery.isNotEmpty) {
        reagents = reagents
            .where(
              (r) => r.name.toLowerCase().contains(searchQuery.toLowerCase()),
            )
            .toList();

        developer.log(
          "${reagents.length} reagents found for query $searchQuery ${reagents.length}",
        );
      }

      // Apply pagination
      final start = offset;
      final end = (offset + pageSize).clamp(0, reagents.length);
      if (start >= reagents.length) return [];

      return reagents.sublist(start, end);
    } catch (e) {
      developer.log('Error loading reagents.json: $e');
      return [];
    }
  }

  @override
  Future<Reagent?> getReagentById(String id) async {
    try {
      final jsonString = await rootBundle.loadString(assetPath);
      final Map<String, dynamic> jsonMap = json.decode(jsonString);

      final reagentsJson = jsonMap['reagents'] as List<dynamic>? ?? [];
      final reagents = reagentsJson
          .map((e) => Reagent.fromJson(e as Map<String, dynamic>))
          .toList();

      final match = reagents.where(
        (r) => r.id.toLowerCase() == id.toLowerCase(),
      );

      return match.isNotEmpty ? match.first : null;
    } catch (e) {
      developer.log("Error reloading reagent by id: $e");
      return null;
    }
  }
}
