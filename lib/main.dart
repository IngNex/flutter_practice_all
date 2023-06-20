import 'package:flutter/material.dart';
import 'package:flutter_practice_all/projects/home_projects.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Practice Flutter All',
      debugShowCheckedModeBanner: false,
      home: HomeProjects(),
    );
  }
}
