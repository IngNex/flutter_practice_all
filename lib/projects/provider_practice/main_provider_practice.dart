import 'package:flutter/material.dart';
import 'package:flutter_practice_all/projects/provider_practice/providers/counter_provider.dart';
import 'package:flutter_practice_all/projects/provider_practice/screens/home/home_provider_practice.dart';
import 'package:provider/provider.dart';

class MainProviderPractice extends StatelessWidget {
  const MainProviderPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practice Flutter All',
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
          create: (_) => CounterProvider(), child: HomeProviderPract()),
    );
  }
}
