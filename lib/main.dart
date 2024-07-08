import 'package:flutter/material.dart';
import 'login_page.dart';
import 'student_home_page.dart';
import 'admin_home_page.dart';

void main() {
  runApp(ExamControlApp());
}

class ExamControlApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exam Control App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
      routes: {
        '/studentHome': (context) => StudentHomePage(),
        '/adminHome': (context) => AdminHomePage(),
      },
    );
  }
}
