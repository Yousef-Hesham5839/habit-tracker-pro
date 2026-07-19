import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Habit Tracker Pro',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}


// دي الصفحة الرئيسية اللي أنا عملتها في التطبيق
// في منتصف الصفحة Boldبخط 24 و Habit Tracker Pro المحتوى هو: كتابة