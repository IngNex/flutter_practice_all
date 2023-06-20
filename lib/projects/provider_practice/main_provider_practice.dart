import 'package:flutter/material.dart';
import 'package:flutter_practice_all/projects/provider_practice/screens/home/home_provider_practice.dart';

class MainProviderPractice extends StatelessWidget {
  const MainProviderPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Practice Flutter All',
      debugShowCheckedModeBanner: false,
      home: HomeProviderPract(),
    );
  }
}
