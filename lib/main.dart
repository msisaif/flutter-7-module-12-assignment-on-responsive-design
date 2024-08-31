import 'package:flutter/material.dart';
import 'package:module_12_assignment_on_responsive_design/presentation/screens/home_screen.dart';

void main() {
  runApp(const ResponsiveApp());
}

class ResponsiveApp extends StatelessWidget {
  const ResponsiveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Responsive App',
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }

}


