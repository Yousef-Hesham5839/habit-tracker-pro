import 'package:flutter/material.dart';
import 'package:habit_tracker_pro/core/utils/greeting_helper.dart';
import 'package:habit_tracker_pro/core/utils/quote_helper.dart';
import 'package:habit_tracker_pro/features/habit/presentation/widgets/mood_badge.dart';

class HeroCard extends StatelessWidget {
  const HeroCard({
    super.key,
    required this.userName,
    required this.progress,
    required this.completedHabits,
    required this.totalHabits,
    required this.streak,
  });

  final String userName;
  final double progress;
  final int completedHabits;
  final int totalHabits;
  final int streak;

  @override
  Widget build(BuildContext context) {
    final greeting = GreetingHelper.getGreeting();
    final motivation = QuoteHelper.getToday();

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: greeting.gradient,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(28),
        boxShadow: [
          BoxShadow(
            color: greeting.gradient.first.withOpacity(.35),
            blurRadius: 24,
            offset: const Offset(0, 12),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MoodBadge(
            mood: motivation.mood,
            icon: motivation.icon,
            color: motivation.color,
          ),

          const SizedBox(height: 24),

          Text(
            greeting.greeting,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),

          const SizedBox(height: 4),

          Text(
            userName,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          Text(
            motivation.quote,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              height: 1.5,
            ),
          ),

          const SizedBox(height: 24),

          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: LinearProgressIndicator(
              value: progress,
              minHeight: 10,
              backgroundColor: Colors.white24,
              valueColor:
                  const AlwaysStoppedAnimation<Color>(Colors.white),
            ),
          ),

          const SizedBox(height: 12),

          Text(
            "${(progress * 100).toInt()}% Completed",
            style: const TextStyle(
              color: Colors.white70,
            ),
          ),

          const SizedBox(height: 24),

          Row(
            children: [
              Expanded(
                child: _StatCard(
                  icon: Icons.local_fire_department_rounded,
                  title: "$streak",
                  subtitle: "Day Streak",
                ),
              ),

              const SizedBox(width: 16),

              Expanded(
                child: _StatCard(
                  icon: Icons.check_circle_rounded,
                  title: "$completedHabits / $totalHabits",
                  subtitle: "Completed",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  const _StatCard({
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  final IconData icon;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.15),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.white.withOpacity(.2),
        ),
      ),
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 28,
          ),

          const SizedBox(height: 10),

          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 4),

          Text(
            subtitle,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}