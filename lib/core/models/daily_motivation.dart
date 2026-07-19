import 'package:flutter/material.dart';

class DailyMotivation {
  final String quote;
  final String mood;
  final IconData icon;
  final Color color;

  const DailyMotivation({
    required this.quote,
    required this.mood,
    required this.icon,
    required this.color,
  });
}
