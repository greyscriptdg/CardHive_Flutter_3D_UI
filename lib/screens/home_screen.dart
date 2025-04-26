import 'package:flutter/material.dart';
import '../data/mock_cards.dart';
import '../components/card_item.dart';

class HomeScreen extends StatelessWidget {
  final VoidCallback toggleTheme;
  final bool isDarkMode;

  const HomeScreen({
    Key? key,
    required this.toggleTheme,
    required this.isDarkMode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CardHive'),
        actions: [
          IconButton(
            icon: Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode),
            onPressed: toggleTheme,
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: mockCards.length,
        itemBuilder: (context, index) {
          return CardItem(card: mockCards[index]);
        },
      ),
    );
  }
}
