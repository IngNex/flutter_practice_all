import 'package:flutter/material.dart';
import 'package:flutter_practice_all/projects/drawer_practice/screens/home/home_drawer.dart';

class MainDrawerPractice extends StatelessWidget {
  const MainDrawerPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Practice Drawer',
      debugShowCheckedModeBanner: false,
      home: HomeDrawerPract(),
    );
  }
}
