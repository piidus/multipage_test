import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 3'),
        actions: [
          IconButton(
            icon: const Icon(Icons.navigate_next),
            onPressed: () => Navigator.pushNamed(context, '/screen4'),
          ),
        ],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.pushNamed(context, '/screen1'),
          child: const Text('Go to Screen 1'),
        ),
      ),
    );
  }
}
