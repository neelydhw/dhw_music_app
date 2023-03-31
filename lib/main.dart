import 'package:dhw_music_app/api/hello.dart';
import 'package:dhw_music_app/pages/login.dart';
import 'package:dhw_music_app/theme.dart';
import 'package:flutter/material.dart';

import 'pages/home.dart';

void main() {
  runApp(const DhwMusic());
}

class DhwMusic extends StatelessWidget {
  const DhwMusic({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '胖丁的音乐',
      theme: ThemeData(
        primarySwatch: primary,
        tabBarTheme: tabBarTheme
      ),
      initialRoute: "/login",
      routes: {
        '/': (context) => const Home(),
        '/login':(context) => const Login()
      },
    );
  }
}
