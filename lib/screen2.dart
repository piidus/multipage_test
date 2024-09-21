import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: ,
      appBar: AppBar(
        title: const Text('Screen 2'),
        actions: [
          IconButton(
            icon: const Icon(Icons.navigate_next),
            onPressed: () => Navigator.pushNamed(context, '/screen3'),
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
