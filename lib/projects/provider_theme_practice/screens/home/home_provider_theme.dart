import 'package:flutter/material.dart';
import 'package:flutter_practice_all/projects/provider_theme_practice/provider/provider_theme.dart';
import 'package:provider/provider.dart';

class HomeProviderTheme extends StatelessWidget {
  const HomeProviderTheme({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
            onPressed: () => theme.setTheme(
              ThemeData.light(),
            ),
            child: const Text('Theme Light'),
          ),
          ElevatedButton(
            onPressed: () => theme.setTheme(
              ThemeData.dark(),
            ),
            child: const Text('Theme Dark'),
          ),
          ElevatedButton(
            onPressed: () => theme.setTheme(
              ThemeData(
                  brightness: Brightness.light,
                  scaffoldBackgroundColor: Colors.red),
            ),
            child: const Text('Theme Red'),
          ),
        ],
      )),
    );
  }
}
