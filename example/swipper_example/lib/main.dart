import 'package:flutter/material.dart';
import 'package:swipperview/swipperview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  List<Map<String, dynamic>> productList = [
    {
      'title': '#1 Product of the Day',
      'description':
          '#1 This project is a starting point for a Dart package, a library module containing code that can be shared easily across multiple Flutter or Dart projects.',
      'url':
          'https://images.unsplash.com/photo-1611930022073-b7a4ba5fcccd?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZHVjdHN8ZW58MHwxfDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
    },
    {
      'title': '#2 Product of the Day',
      'description':
          '#2 This project is a starting point for a Dart package, a library module containing code that can be shared easily across multiple Flutter or Dart projects.',
      'url':
          'https://images.unsplash.com/photo-1610824352934-c10d87b700cc?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjV8fHByb2R1Y3RzfGVufDB8MXwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
    },
    {
      'title': '#3 Product of the Day',
      'description':
          '#3 This project is a starting point for a Dart package, a library module containing code that can be shared easily across multiple Flutter or Dart projects.',
      'url':
          'https://images.unsplash.com/photo-1525966222134-fcfa99b8ae77?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzJ8fHByb2R1Y3RzfGVufDB8MXwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
    },
    {
      'title': '#4 Product of the Day',
      'description':
          '#4 This project is a starting point for a Dart package, a library module containing code that can be shared easily across multiple Flutter or Dart projects.',
      'url':
          'https://images.unsplash.com/photo-1556228720-195a672e8a03?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTR8fHByb2R1Y3RzfGVufDB8MXwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Swipper(
        data: productList,
        icon: Icons.headphones,
        onChange: (page) {
          print('swipped $page');
        },
        actionName: 'Buy Now',
        actionHandler: (index) {
          print('action Click $index');
        },
      ),
    );
  }
}
