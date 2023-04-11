import 'package:dhw_music_app/api/hello.dart';
import 'package:dhw_music_app/pages/login/login_page.dart';
import 'package:dhw_music_app/theme.dart';
import 'package:flutter/material.dart';

import 'pages/home/home_page.dart';

void main() {
  runApp(const DhwMusic());
}

class DhwMusic extends StatelessWidget {
  const DhwMusic({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '胖丁的音乐',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: primary,
        tabBarTheme: tabBarTheme
      ),
      initialRoute: "/",
      routes: {
        '/': (context) => const HomePage(),
        '/login':(context) => const LoginPage()
      },
    );
  }
}
