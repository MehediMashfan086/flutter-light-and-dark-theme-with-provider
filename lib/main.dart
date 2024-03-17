import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_dark_light_theme_app/provider/theme_changer_provider.dart';
import 'package:provider_dark_light_theme_app/screens/dark_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeChangerProvider(),
      child: Builder(
        builder: (BuildContext context) {
          final themeChanger = Provider.of<ThemeChangerProvider>(context);
          return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              brightness: Brightness.light,
            ),
            debugShowCheckedModeBanner: false,
            themeMode: themeChanger.themeMode,
            darkTheme: ThemeData(
              brightness: Brightness.dark,
            ),
            home: const DarkThemeScreen(),
          );
        },
      ),
    );
  }
}
