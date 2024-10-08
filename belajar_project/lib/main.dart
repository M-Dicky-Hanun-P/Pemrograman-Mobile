import 'package:belajar/styles.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0E1F43),
      appBar: AppBar(
        title: Text(
          'Login Sebagai',
          style: TextStyles.titleLg,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/img/logo1.png', height: 200, width: 150),
              const SizedBox(width: 10),
              Image.asset('assets/img/logo2.png', height: 200, width: 140),
            ],
          ),
        ],
      ),
    );
  }
}
