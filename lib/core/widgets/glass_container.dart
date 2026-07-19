import 'dart:ui';

import 'package:flutter/material.dart';

class GlassContainer extends StatelessWidget {
  const GlassContainer({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.symmetric(
      horizontal: 16,
      vertical: 10,
    ),
    this.borderRadius = 18,
  });

  final Widget child;
  final EdgeInsets padding;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 12,
          sigmaY: 12,
        ),
        child: Container(
          padding: padding,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface.withOpacity(.15),
            borderRadius: BorderRadius.circular(borderRadius),
            border: Border.all(
              color: Colors.white.withOpacity(.25),
              width: 1,
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}