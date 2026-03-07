import 'dart:convert';
import 'dart:developer' as developer show log;

import 'package:flutter/services.dart';
import 'package:ss14chemtool/features/recipe/data/model/reagent_model.dart';

abstract class ReagentLocalDatasource {
  Future<List<Reagent>> getReagents(int offset, String? searchQuery);
}

class ReagentsLocalDatasourceImpl implements ReagentLocalDatasource {
  final String assetPath;

  ReagentsLocalDatasourceImpl({this.assetPath = 'assets/recipe/buffers.json'});

  @override
  Future<List<Reagent>> getReagents(int offset, String? searchQuery) async {
    try {
      // Load JSON string from assets
      final jsonString = await rootBundle.loadString(assetPath);

      // Decode JSON
      final Map<String, dynamic> jsonMap = json.decode(jsonString);

      // Extract the 'buffers' array
      final buffersJson = jsonMap['buffers'] as List<dynamic>? ?? [];

      // Convert each item to BufferEntity
      final buffers = buffersJson
          .map((e) => Reagent.fromJson(e as Map<String, dynamic>))
          .toList();

      return buffers;
    } catch (e) {
      // Optional: handle errors
      developer.log('Error loading buffers.json: $e');
      return [];
    }
  }
}
