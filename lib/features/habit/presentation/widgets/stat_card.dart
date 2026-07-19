import 'package:flutter/material.dart';

import '../../../../../../app/theme/app_colors.dart';
import '../../../../../../app/theme/app_radius.dart';
import '../../../../../../app/theme/app_spacing.dart';

class StatCard extends StatelessWidget {
  const StatCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  final IconData icon;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(AppSpacing.md),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(.14),
          borderRadius: BorderRadius.circular(AppRadius.lg),
          border: Border.all(
            color: Colors.white.withOpacity(.20),
          ),
        ),
        child: Column(
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: 28,
            ),

            const SizedBox(height: AppSpacing.md),

            Text(
              title,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
            ),

            const SizedBox(height: AppSpacing.xs),

            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.white70,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
