import 'package:flutter/material.dart';
import 'package:flutter_practice_all/projects/provider_theme_practice/provider/provider_theme.dart';
import 'package:flutter_practice_all/projects/provider_theme_practice/screens/home/home_provider_theme.dart';
import 'package:provider/provider.dart';

class MainProviderTheme extends StatelessWidget {
  const MainProviderTheme({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeChanger()),
      ],
      child: Builder(builder: (newContext) {
        final theme = Provider.of<ThemeChanger>(newContext);
        return MaterialApp(
          theme: theme.getTheme(),
          home: const HomeProviderTheme(),
        );
      }),
    );
  }
}
