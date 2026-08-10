import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';

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
