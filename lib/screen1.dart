import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';


class Screen1 extends StatelessWidget {
  const Screen1({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Permission'),
        actions: [
          IconButton(
            icon: const Icon(Icons.navigate_next),
            onPressed: () => Navigator.pushNamed(context, '/screen2'),
          ),
        ],
      ),
      body: Center(
        child: Container(
          // height: double.infinity,
          // width: double.infinity,
          decoration: const BoxDecoration(
            gradient: RadialGradient(
              colors: [
                Color.fromARGB(255, 226, 226, 139),
                Color.fromARGB(255, 234, 193, 122)
              ],
              center: Alignment.center,
              radius: 0.5,
            ),
          ),
          child: Center(
            child:  Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () async {
                    final permissionStatus = await Permission.storage.status;
                    if (permissionStatus.isDenied) {
                      await Permission.storage.request();
                    }
                  },
                  child: const Text('Request Storage Permission'),
                ),
                ElevatedButton(
                  child: const Text('Go to Screen > 5'),
                   onPressed: () => Navigator.pushNamed(context, '/screen5'),
                ),
              ],
            )
              
          ),
        ),
      ),
    );
  }
}
