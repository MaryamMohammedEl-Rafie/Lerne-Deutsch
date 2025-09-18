import 'package:flutter/material.dart';
import 'package:lerne_deutsch/pages/home_page.dart';

void main() {
  runApp(const LerneDeutschApp());
}

class LerneDeutschApp extends StatelessWidget {
  const LerneDeutschApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}
