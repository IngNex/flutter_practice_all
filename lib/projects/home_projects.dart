import 'package:flutter/material.dart';
import 'package:flutter_practice_all/projects/3d_webview/main_3d_webview.dart';
import 'package:flutter_practice_all/projects/drawer_practice/main_drawer_practice.dart';
import 'package:flutter_practice_all/projects/provider_practice/main_provider_practice.dart';
import 'package:flutter_practice_all/projects/provider_theme_practice/main_theme_provider.dart';
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
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MainProviderTheme(),
                ),
              ),
              child: const Text('Provider Themes'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Main3dWebview(),
                ),
              ),
              child: const Text('3d WebView'),
            ),
          ],
        ),
      ),
    );
  }
}
