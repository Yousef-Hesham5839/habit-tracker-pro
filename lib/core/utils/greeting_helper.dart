import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class GreetingData {
  final String greeting;
  final String message;
  final IconData icon;
  final List<Color> gradient;

  const GreetingData({
    required this.greeting,
    required this.message,
    required this.icon,
    required this.gradient,
  });
}

class GreetingHelper {
  GreetingHelper._();

  static GreetingData getGreeting() {
    final hour = DateTime.now().hour;

    if (hour >= 5 && hour < 12) {
      return const GreetingData(
        greeting: 'Good Morning',
        message: 'Start your day with positive habits.',
        icon: LucideIcons.sunrise,
        gradient: [
          Color(0xFF6C63FF),
          Color(0xFF8B5CF6),
        ],
      );
    }

    if (hour >= 12 && hour < 17) {
      return const GreetingData(
        greeting: 'Good Afternoon',
        message: 'Keep the momentum going.',
        icon: LucideIcons.sun,
        gradient: [
          Color(0xFF7C3AED),
          Color(0xFFA855F7),
        ],
      );
    }

    if (hour >= 17 && hour < 21) {
      return const GreetingData(
        greeting: 'Good Evening',
        message: 'Finish your habits strong.',
        icon: LucideIcons.sunset,
        gradient: [
          Color(0xFF4F46E5),
          Color(0xFF7C3AED),
        ],
      );
    }

    return const GreetingData(
      greeting: 'Good Night',
      message: 'Small progress is still progress.',
      icon: LucideIcons.moonStar,
      gradient: [
        Color(0xFF312E81),
        Color(0xFF4338CA),
      ],
    );
  }
}