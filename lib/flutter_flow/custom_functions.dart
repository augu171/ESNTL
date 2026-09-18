import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';

double? progressBarCustomFunction(
  int? totalMs,
  int? elapsedMs,
) {
  final elapsed = elapsedMs ?? 0;
  final total = totalMs ?? 0;

  if (total == 0) return 0.0;

  final remainingFraction = (elapsed / total).clamp(0.0, 1.0);

  return 1.0 - remainingFraction;
}

List<FavoriteItemStruct> moveToFirst(
  List<FavoriteItemStruct> favList,
  String itemId,
) {
  final list = List<FavoriteItemStruct>.from(favList);
  final index = list.indexWhere((item) => item.id == itemId);
  if (index > 0) {
    final item = list.removeAt(index);
    list.insert(0, item);
  }
  return list;
}

String stringToImagePath(String string) {
  return string;
}

double intToDoubleProgress(int num) {
  if (num == 0) return 0.0;

  final numToParse = (num / 100).clamp(0.0, 1.0);

  return numToParse;
}

int calculateModuleProgress(List<int> chapterProgressList) {
  if (chapterProgressList.isEmpty) return 0;

  int parseToInt(dynamic value) {
    if (value is int) return value;
    if (value is double) return value.toInt();
    if (value is String) return int.tryParse(value) ?? 0;
    return 0;
  }

  final parsedList =
      chapterProgressList.map((item) => parseToInt(item)).toList();

  final sum = parsedList.reduce((a, b) => a + b);
  final average = sum / parsedList.length;

  return average.round();
}

ChapterStructStruct getChapterByNumber(
  List<ChapterStructStruct> chapters,
  String chapterNumber,
) {
  return chapters.firstWhere(
    (chapter) => chapter.chapterNumber == chapterNumber,
    orElse: () => ChapterStructStruct(
      chapterName: 'No encontrado',
      chapterDescription: '',
      chapterNumber: chapterNumber,
      chapterCompletionPercentage: 0,
    ),
  );
}

int getModuleProgressPercentage(
  List<dynamic> chapters,
  List<String> chapterNumbers,
) {
  if (chapters == null || chapters.isEmpty) return 0;

  final percentages = <int>[];

  for (final item in chapters) {
    String? number;
    dynamic percentage;

    if (item is Map) {
      number = item['chapterNumber']?.toString();
      percentage = item['chapterCompletionPercentage'];
    } else {
      try {
        number = item.chapterNumber;
        percentage = item.chapterCompletionPercentage;
      } catch (_) {}
    }

    if (number != null && chapterNumbers.contains(number)) {
      if (percentage is int) {
        percentages.add(percentage);
      } else if (percentage is num) {
        percentages.add(percentage.toInt());
      } else if (percentage is String) {
        percentages.add(int.tryParse(percentage) ?? 0);
      } else {
        percentages.add(0);
      }
    }
  }

  if (percentages.isEmpty) return 0;

  final sum = percentages.reduce((a, b) => a + b);
  return (sum / percentages.length).round();
}
