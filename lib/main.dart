import 'package:flutter/material.dart';
import 'package:task_bloc/page/home_scren.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bloc Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:  SearchPage(),
    );
  }
}
