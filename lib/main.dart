import 'package:dhw_music_app/api/hello.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '音乐盒',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: '胖丁音乐盒'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String message = "胖丁的音乐盒";

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  void _fetchData(){
    sayHello().then((value) => {
      setState(() { message = value;})
    });
  }

  final ButtonStyle buttonStyle =
  ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(message,style: Theme.of(context).textTheme.headlineLarge),
            ElevatedButton(
              style: buttonStyle,
              onPressed: _fetchData,
              child: const Text('请求数据'),
            ),
            const SizedBox(height: 30),
            const Text(
              '你已经点击次数为：',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
