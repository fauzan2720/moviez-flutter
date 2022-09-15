import 'package:flutter/material.dart';
import 'package:moviez_streaming/pages/home_page.dart';
import 'package:moviez_streaming/pages/search_page.dart';
import 'package:moviez_streaming/themes/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: bgColor,
      debugShowCheckedModeBanner: false,
      title: 'Moviez+Streaming',
      home: const HomePage(),
      routes: {
        'home': (context) => const HomePage(),
        'search': (context) => const SearchPage(),
      },
    );
  }
}
