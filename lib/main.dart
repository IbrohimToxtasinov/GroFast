import 'package:flutter/material.dart';
import 'package:grofast/screens/onboarding_screen/onboarding_screen.dart';
import 'package:grofast/utils/images.dart';
import 'package:grofast/utils/my_utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const OnboardingScreen(),
    );
  }
}
