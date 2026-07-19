import 'package:flutter/material.dart';
import 'package:habit_tracker_pro/core/widgets/glass_container.dart';

class MoodBadge extends StatelessWidget {
  final String mood;
  final IconData icon;
  final Color color;

  const MoodBadge({
    super.key,
    required this.mood,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GlassContainer(
     borderRadius: 50,
     padding: const EdgeInsets.symmetric(
     horizontal: 14,
     vertical: 8,
    ),
     child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
       Icon(
        icon,
        color: Colors.white,
        size: 18,
       ),
       const SizedBox(width: 8),
       Text(
        mood,
        style: const TextStyle(
         color: Colors.white,
         fontWeight: FontWeight.w600,
        ),
       ),
      ],
     ),
    );
  }
}