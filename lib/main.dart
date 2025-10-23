import 'package:flutter/material.dart';
import 'package:uts_arpan_2410910040028/uts/page1.dart';
import 'package:uts_arpan_2410910040028/uts/page2.dart';
import 'package:uts_arpan_2410910040028/uts/page3.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Page1());
  }
}