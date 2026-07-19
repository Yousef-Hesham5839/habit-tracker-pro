import 'package:flutter/material.dart';
import 'package:habit_tracker_pro/features/habit/presentation/pages/home_page.dart';

class HabitTrackerApp extends StatelessWidget {
  const HabitTrackerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Habit Tracker Pro',
      home: const HomePage(),
    );
  }
}