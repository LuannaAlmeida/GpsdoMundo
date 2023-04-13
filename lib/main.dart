import 'package:flutter/material.dart';
import 'burguerdelicious_theme.dart';
import 'home.dart';

void main() {
  // 1
  runApp(const BurguerDelicious());
}

class BurguerDelicious extends StatelessWidget {
  // 2
  const BurguerDelicious({super.key});
  @override
  Widget build(BuildContext context) {
    final theme = BurguerDeliciousTheme.dark();
    return MaterialApp(
      theme: theme,
      title: 'BURGUER DELICIOUS',
      home: const Home(),
    );
  }
}
