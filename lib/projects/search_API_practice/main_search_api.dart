import 'package:flutter/material.dart';
import 'package:flutter_practice_all/projects/search_API_practice/screens/home/home_search_api.dart';

class MainSearchPractice extends StatelessWidget {
  const MainSearchPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Practice Search API',
      debugShowCheckedModeBanner: false,
      home: HomeSearchApi(),
    );
  }
}
