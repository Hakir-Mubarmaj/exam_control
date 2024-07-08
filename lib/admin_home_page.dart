import 'package:flutter/material.dart';
import 'admin_schedule_exam_page.dart';
import 'admin_schedule_form_page.dart';
import 'admin_requests_page.dart';

class AdminHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Home'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Card(
            child: ListTile(
              title: Text('Schedule an Exam'),
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
              title: Text('Schedule Form Fill-up Date'),
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
              title: Text('Requests for Certificates'),
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
