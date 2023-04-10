import 'package:appjam/news/screens/home_screen.dart';
import 'package:flutter/material.dart';

class News extends StatefulWidget {
  const News({super.key});

  @override
  State<News> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NewsScreen(),
    );
  }
}
