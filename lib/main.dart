import 'package:flutter/material.dart';
import 'routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Routing App',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/screen1',
      routes: appRoutes,
    );
  }
}
