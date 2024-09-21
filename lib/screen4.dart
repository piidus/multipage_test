import 'package:flutter/material.dart';

class Screen4 extends StatelessWidget {
  const Screen4({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 4'),
        actions: [
          IconButton(
            icon: const Icon(Icons.navigate_next),
            onPressed: () => Navigator.pushNamed(context, '/screen1'),
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
