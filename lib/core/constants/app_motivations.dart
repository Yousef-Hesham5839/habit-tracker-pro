import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

import '../models/daily_motivation.dart';

class AppMotivations {
  AppMotivations._();

  static const motivations = [

    DailyMotivation(
      mood: "Motivation",
      quote: "Consistency beats motivation.",
      icon: LucideIcons.rocket,
      color: Color(0xFF8B5CF6),
    ),

    DailyMotivation(
      mood: "Discipline",
      quote: "Small steps every day.",
      icon: LucideIcons.target,
      color: Color(0xFF3B82F6),
    ),

    DailyMotivation(
      mood: "Success",
      quote: "Success starts with small actions.",
      icon: LucideIcons.trophy,
      color: Color(0xFF22C55E),
    ),

    DailyMotivation(
      mood: "Focus",
      quote: "Stay focused. Stay consistent.",
      icon: LucideIcons.crosshair,
      color: Color(0xFFF59E0B),
    ),
  ];
}