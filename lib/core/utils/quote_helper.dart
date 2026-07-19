import '../constants/app_motivations.dart';
import '../models/daily_motivation.dart';

class QuoteHelper {
  QuoteHelper._();

  static DailyMotivation getToday() {
    final now = DateTime.now();

    final day = now.difference(
      DateTime(now.year, 1, 1),
    ).inDays;

    return AppMotivations.motivations[
      day % AppMotivations.motivations.length
    ];
  }
}