import 'package:flutter/material.dart';
import 'admin_schedule_exam_page.dart';
import 'admin_schedule_form_page.dart';
import 'admin_requests_page.dart';

class AdminHomePage extends StatelessWidget {
  const AdminHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Home'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Card(
            child: ListTile(
              title: const Text('Schedule an Exam'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AdminScheduleExamPage()),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('Schedule Form Fill-up Date'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AdminScheduleFormPage()),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('Requests for Certificates'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AdminRequestsPage()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
