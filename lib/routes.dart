import 'package:flutter/material.dart';
import 'screen1.dart';
import 'screen2.dart';
import 'screen3.dart';
import 'screen4.dart';
import 'screen5.dart';

Map<String, WidgetBuilder> appRoutes = {
  '/screen1': (context) => const Screen1(),
  '/screen2': (context) => const Screen2(),
  '/screen3': (context) => const Screen3(),
  '/screen4': (context) => const Screen4(),
  '/screen5': (context) => const Screen5(),
};
