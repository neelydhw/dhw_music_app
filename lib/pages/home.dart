import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return Center(
      child: ElevatedButton(
        style: style,
        onPressed: () {
          Navigator.pushNamed(context, '/login');
        },
        child: const Text('登录'),
      ),
    );
  }
}
