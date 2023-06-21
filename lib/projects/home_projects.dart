import 'package:flutter/material.dart';
import 'package:flutter_practice_all/projects/drawer_practice/main_drawer_practice.dart';
import 'package:flutter_practice_all/projects/provider_practice/main_provider_practice.dart';
import 'package:flutter_practice_all/projects/search_API_practice/main_search_api.dart';

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
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MainDrawerPractice(),
                ),
              ),
              child: const Text('Drawer Practice'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MainSearchPractice(),
                ),
              ),
              child: const Text('Search Api Practice'),
            ),
          ],
        ),
      ),
    );
  }
}
