import 'dart:convert';
import 'dart:developer' as developer show log;

import 'package:flutter/services.dart';

import '../../models/buffer.dart';

abstract class BuffersLocalDatasource {
  Future<List<Buffer>> getBuffers();
}

class BuffersLocalDatasourceImpl implements BuffersLocalDatasource {
  final String assetPath;

  BuffersLocalDatasourceImpl({this.assetPath = 'assets/recipe/buffers.json'});

  @override
  Future<List<Buffer>> getBuffers() async {
    try {
      // Load JSON string from assets
      final jsonString = await rootBundle.loadString(assetPath);

      // Decode JSON
      final Map<String, dynamic> jsonMap = json.decode(jsonString);

      // Extract the 'buffers' array
      final buffersJson = jsonMap['buffers'] as List<dynamic>? ?? [];

      // Convert each item to BufferEntity
      final buffers = buffersJson
          .map((e) => Buffer.fromJson(e as Map<String, dynamic>))
          .toList();

      return buffers;
    } catch (e) {
      // Optional: handle errors
      developer.log('Error loading buffers.json: $e');
      return [];
    }
  }
}
