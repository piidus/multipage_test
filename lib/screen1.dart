import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      appBar: AppBar(
        title: const Text('Screen 1'),
        actions: [
          IconButton(
            icon: const Icon(Icons.navigate_next),
            onPressed: () => Navigator.pushNamed(context, '/screen2'),
          ),
        ],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.pushNamed(context, '/screen5'),
          child: const Text('Go to Screen 5'),
        ),
      ),
    );
  }
}
