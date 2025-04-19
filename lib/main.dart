import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'theme/light_theme.dart';
import 'theme/dark_theme.dart';

void main() {
  runApp(CardHiveApp());
}

class CardHiveApp extends StatefulWidget {
  @override
  _CardHiveAppState createState() => _CardHiveAppState();
}

class _CardHiveAppState extends State<CardHiveApp> {
  bool isDarkMode = false;

  void toggleTheme() {
    setState(() => isDarkMode = !isDarkMode);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CardHive',
      debugShowCheckedModeBanner: false,
      theme: isDarkMode ? darkTheme : lightTheme,
      home: HomeScreen(
        toggleTheme: toggleTheme,
        isDarkMode: isDarkMode,
      ),
    );
  }
}
