import 'package:flutter/material.dart';
import 'package:flutter_practice_all/projects/provider_practice/main_provider_practice.dart';

class HomeProjects extends StatelessWidget {
  const HomeProjects({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Projects Practice'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MainProviderPractice(),
                ),
              ),
              child: const Text('Provider Practice'),
            ),
          ],
        ),
      ),
    );
  }
}
